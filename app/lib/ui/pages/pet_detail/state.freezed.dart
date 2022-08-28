// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PetDetailState {
  Pet get pet => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  EventList<Event> get calendarEventList => throw _privateConstructorUsedError;
  double get feedCompletionPercentage => throw _privateConstructorUsedError;
  List<Feed> get feedsForSelectedDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PetDetailStateCopyWith<PetDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetDetailStateCopyWith<$Res> {
  factory $PetDetailStateCopyWith(
          PetDetailState value, $Res Function(PetDetailState) then) =
      _$PetDetailStateCopyWithImpl<$Res>;
  $Res call(
      {Pet pet,
      DateTime selectedDate,
      EventList<Event> calendarEventList,
      double feedCompletionPercentage,
      List<Feed> feedsForSelectedDate});

  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class _$PetDetailStateCopyWithImpl<$Res>
    implements $PetDetailStateCopyWith<$Res> {
  _$PetDetailStateCopyWithImpl(this._value, this._then);

  final PetDetailState _value;
  // ignore: unused_field
  final $Res Function(PetDetailState) _then;

  @override
  $Res call({
    Object? pet = freezed,
    Object? selectedDate = freezed,
    Object? calendarEventList = freezed,
    Object? feedCompletionPercentage = freezed,
    Object? feedsForSelectedDate = freezed,
  }) {
    return _then(_value.copyWith(
      pet: pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarEventList: calendarEventList == freezed
          ? _value.calendarEventList
          : calendarEventList // ignore: cast_nullable_to_non_nullable
              as EventList<Event>,
      feedCompletionPercentage: feedCompletionPercentage == freezed
          ? _value.feedCompletionPercentage
          : feedCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      feedsForSelectedDate: feedsForSelectedDate == freezed
          ? _value.feedsForSelectedDate
          : feedsForSelectedDate // ignore: cast_nullable_to_non_nullable
              as List<Feed>,
    ));
  }

  @override
  $PetCopyWith<$Res> get pet {
    return $PetCopyWith<$Res>(_value.pet, (value) {
      return _then(_value.copyWith(pet: value));
    });
  }
}

/// @nodoc
abstract class _$$_PetDetailStateCopyWith<$Res>
    implements $PetDetailStateCopyWith<$Res> {
  factory _$$_PetDetailStateCopyWith(
          _$_PetDetailState value, $Res Function(_$_PetDetailState) then) =
      __$$_PetDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Pet pet,
      DateTime selectedDate,
      EventList<Event> calendarEventList,
      double feedCompletionPercentage,
      List<Feed> feedsForSelectedDate});

  @override
  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class __$$_PetDetailStateCopyWithImpl<$Res>
    extends _$PetDetailStateCopyWithImpl<$Res>
    implements _$$_PetDetailStateCopyWith<$Res> {
  __$$_PetDetailStateCopyWithImpl(
      _$_PetDetailState _value, $Res Function(_$_PetDetailState) _then)
      : super(_value, (v) => _then(v as _$_PetDetailState));

  @override
  _$_PetDetailState get _value => super._value as _$_PetDetailState;

  @override
  $Res call({
    Object? pet = freezed,
    Object? selectedDate = freezed,
    Object? calendarEventList = freezed,
    Object? feedCompletionPercentage = freezed,
    Object? feedsForSelectedDate = freezed,
  }) {
    return _then(_$_PetDetailState(
      pet: pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarEventList: calendarEventList == freezed
          ? _value.calendarEventList
          : calendarEventList // ignore: cast_nullable_to_non_nullable
              as EventList<Event>,
      feedCompletionPercentage: feedCompletionPercentage == freezed
          ? _value.feedCompletionPercentage
          : feedCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      feedsForSelectedDate: feedsForSelectedDate == freezed
          ? _value._feedsForSelectedDate
          : feedsForSelectedDate // ignore: cast_nullable_to_non_nullable
              as List<Feed>,
    ));
  }
}

/// @nodoc

class _$_PetDetailState implements _PetDetailState {
  const _$_PetDetailState(
      {required this.pet,
      required this.selectedDate,
      required this.calendarEventList,
      this.feedCompletionPercentage = 0,
      final List<Feed> feedsForSelectedDate = const []})
      : _feedsForSelectedDate = feedsForSelectedDate;

  @override
  final Pet pet;
  @override
  final DateTime selectedDate;
  @override
  final EventList<Event> calendarEventList;
  @override
  @JsonKey()
  final double feedCompletionPercentage;
  final List<Feed> _feedsForSelectedDate;
  @override
  @JsonKey()
  List<Feed> get feedsForSelectedDate {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedsForSelectedDate);
  }

  @override
  String toString() {
    return 'PetDetailState(pet: $pet, selectedDate: $selectedDate, calendarEventList: $calendarEventList, feedCompletionPercentage: $feedCompletionPercentage, feedsForSelectedDate: $feedsForSelectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetDetailState &&
            const DeepCollectionEquality().equals(other.pet, pet) &&
            const DeepCollectionEquality()
                .equals(other.selectedDate, selectedDate) &&
            const DeepCollectionEquality()
                .equals(other.calendarEventList, calendarEventList) &&
            const DeepCollectionEquality().equals(
                other.feedCompletionPercentage, feedCompletionPercentage) &&
            const DeepCollectionEquality()
                .equals(other._feedsForSelectedDate, _feedsForSelectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pet),
      const DeepCollectionEquality().hash(selectedDate),
      const DeepCollectionEquality().hash(calendarEventList),
      const DeepCollectionEquality().hash(feedCompletionPercentage),
      const DeepCollectionEquality().hash(_feedsForSelectedDate));

  @JsonKey(ignore: true)
  @override
  _$$_PetDetailStateCopyWith<_$_PetDetailState> get copyWith =>
      __$$_PetDetailStateCopyWithImpl<_$_PetDetailState>(this, _$identity);
}

abstract class _PetDetailState implements PetDetailState {
  const factory _PetDetailState(
      {required final Pet pet,
      required final DateTime selectedDate,
      required final EventList<Event> calendarEventList,
      final double feedCompletionPercentage,
      final List<Feed> feedsForSelectedDate}) = _$_PetDetailState;

  @override
  Pet get pet;
  @override
  DateTime get selectedDate;
  @override
  EventList<Event> get calendarEventList;
  @override
  double get feedCompletionPercentage;
  @override
  List<Feed> get feedsForSelectedDate;
  @override
  @JsonKey(ignore: true)
  _$$_PetDetailStateCopyWith<_$_PetDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
