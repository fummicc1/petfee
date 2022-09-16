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
      Future(() async {
        /// Key: dateTime
        /// Value: number of feed
        final Map<DateTime, List<Feed>> dayFeedMap = {};

        for (final feed in feeds) {
          final zeroHourDate = feed.date.dropTime;
          final current = dayFeedMap[zeroHourDate] ?? [];
          current.add(feed);
          dayFeedMap[zeroHourDate] = current;
        }

        final Map<DateTime, List<Event>> events = {};
        for (final element in dayFeedMap.entries) {
          final dateTime = element.key;
          final eventList = element.value.map((feed) {
            final isClear =
                element.value.length / state.pet.numberOfFeedTimesPerDay >= 1;
            return Event(
              date: dateTime,
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
          }).toList();
          events[dateTime] = eventList;
        }
        final EventList<Event> calendarEventList = EventList(events: events);

        final feedsForSelectedDate = await _findFeedsForDate(
          date: this.state.selectedDate,
        );

        this.state = this.state.copyWith(
          feedsForSelectedDate: feedsForSelectedDate,
          calendarEventList: calendarEventList,
        );
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
