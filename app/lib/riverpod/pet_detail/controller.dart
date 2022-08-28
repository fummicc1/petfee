import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/domain/entities/pet.dart';
import '/domain/entities/feed.dart';
import '/domain/repositories/feed/repository.dart';
import '/domain/services/push_notification.dart';
import '/utils/datetime.dart';

import 'state.dart';

class PetDetailController extends StateNotifier<PetDetailState> {
  StreamSubscription? _subscription;
  final FeedRepository _feedRepository;
  final PushNotificationClient _pushNotificationClient;

  PetDetailController(
    PetDetailState state,
    this._feedRepository,
    this._pushNotificationClient,
  ) : super(state) {
    _subscription =
        _feedRepository.feedsSnapshot(petID: state.pet.petID).listen((feeds) {
      /// Key: dateTime
      /// Value: number of feed
      final Map<DateTime, List<Feed>> dayFeedMap = {};

      for (final feed in feeds) {
        final zeroHourDate = DateTime(
          feed.date.year,
          feed.date.month,
          feed.date.day,
        );
        final current = dayFeedMap[zeroHourDate] ?? [];
        current.add(feed);
        dayFeedMap[zeroHourDate] = current;
      }

      state = state.copyWith(
        calendarEventList: EventList(events: {}),
      );

      for (final feeds in dayFeedMap.values) {
        _addEvent(
          feeds: feeds,
          dateTime: feeds.first.date,
        );
      }

      Future(() async {
        state = state.copyWith(
          feedsForSelectedDate: await _findFeedsForDate(
            date: state.selectedDate,
          ),
        );
      });

      Future(() async {
        final isAuthed = await _pushNotificationClient.isNotificationAuthorized;
        if (!isAuthed) await _pushNotificationClient.requestPermission();
      });
    });
  }

  void updateSelectedDate(DateTime newValue) async {
    newValue = newValue.dropTime;
    final feeds = await _findFeedsForDate(date: newValue);
    state = state.copyWith(
      selectedDate: newValue,
      feedsForSelectedDate: feeds,
    );
  }

  _addEvent({
    required List<Feed> feeds,
    required DateTime dateTime,
  }) async {
    dateTime = dateTime.dropTime;
    List<Event> events = [];
    final pet = state.pet;
    final calendarEventList = state.calendarEventList;
    final isClear = feeds.length / pet.numberOfFeedTimesPerDay >= 1;
    for (final feed in feeds) {
      final event = Event(
        date: feed.date,
        title: "Feed",
        icon: Container(
          color: Colors.brown,
          child: Icon(
            isClear ? Icons.check : Icons.sms_failed_outlined,
            size: 32,
            color: Colors.white,
          ),
        ),
      );
      events.add(event);
    }
    calendarEventList.addAll(dateTime, events);

    state = state.copyWith(calendarEventList: calendarEventList);
  }

  Future<List<Feed>> _findFeedsForDate({required final DateTime date}) async {
    final pet = state.pet;
    final List<Feed> feeds = await _feedRepository.fetchFeeds(petID: pet.petID);
    return feeds
        .where((feed) =>
            feed.date.year == date.year &&
            feed.date.month == date.month &&
            feed.date.day == date.day)
        .toList();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

final petDetailController =
    StateNotifierProvider.family<PetDetailController, PetDetailState, Pet>(
        (ref, pet) {
  final state = PetDetailState(
    pet: pet,
    selectedDate: DateTime.now(),
    calendarEventList: EventList(events: {}),
  );
  final feed = ref.watch(feedRepositoryProvider);
  final push = ref.watch(pushNotificationProvider);
  return PetDetailController(
    state,
    feed,
    push,
  );
});
