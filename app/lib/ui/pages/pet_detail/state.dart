import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/domain/entities/feed.dart';
import '/domain/entities/pet.dart';

part 'state.freezed.dart';

@freezed
class PetDetailState with _$PetDetailState {
  const factory PetDetailState({
    required final Pet pet,
    required final DateTime selectedDate,
    required final EventList<Event> calendarEventList,
    @Default(0) final double feedCompletionPercentage,
    @Default([]) final List<Feed> feedsForSelectedDate,
  }) = _PetDetailState;
}
