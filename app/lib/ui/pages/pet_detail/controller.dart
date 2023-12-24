import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:petfee/domain/entities/pet.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/domain/entities/feed.dart';
import '/domain/repositories/feed/repository.dart';
import '/domain/services/push_notification.dart';
import '/utils/datetime.dart';
import 'state.dart';

part 'controller.g.dart';

@Riverpod()
class PetDetailController extends _$PetDetailController {
  @override
  PetDetailState build({
    required Pet pet,
    required List<Feed> feeds,
  }) {
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
        final isClear = element.value.length / pet.numberOfFeedTimesPerDay >= 1;
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

    _findFeedsForDate(
      date: DateTime.now(),
    ).then((value) {
      state = state.copyWith(feedsForSelectedDate: []);
    });

    Future(() async {
      final isAuthed = await ref
          .watch(pushNotificationClientProvider.notifier)
          .isNotificationAuthorized;
      if (!isAuthed) {
        await ref
            .watch(pushNotificationClientProvider.notifier)
            .requestPermission();
      }
    });
    return PetDetailState(
      feedsForSelectedDate: [],
      calendarEventList: calendarEventList,
      pet: pet,
      selectedDate: DateTime.now(),
    );
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
    final List<Feed> feeds =
        await ref.watch(FeedRepositoryProvider(pet).notifier).fetch();
    return feeds
        .where((feed) =>
            feed.date.year == date.year &&
            feed.date.month == date.month &&
            feed.date.day == date.day)
        .toList();
  }
}
