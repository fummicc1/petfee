// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$PetDetailStateCopyWithImpl<$Res, PetDetailState>;
  @useResult
  $Res call(
      {Pet pet,
      DateTime selectedDate,
      EventList<Event> calendarEventList,
      double feedCompletionPercentage,
      List<Feed> feedsForSelectedDate});

  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class _$PetDetailStateCopyWithImpl<$Res, $Val extends PetDetailState>
    implements $PetDetailStateCopyWith<$Res> {
  _$PetDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pet = null,
    Object? selectedDate = null,
    Object? calendarEventList = null,
    Object? feedCompletionPercentage = null,
    Object? feedsForSelectedDate = null,
  }) {
    return _then(_value.copyWith(
      pet: null == pet
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarEventList: null == calendarEventList
          ? _value.calendarEventList
          : calendarEventList // ignore: cast_nullable_to_non_nullable
              as EventList<Event>,
      feedCompletionPercentage: null == feedCompletionPercentage
          ? _value.feedCompletionPercentage
          : feedCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      feedsForSelectedDate: null == feedsForSelectedDate
          ? _value.feedsForSelectedDate
          : feedsForSelectedDate // ignore: cast_nullable_to_non_nullable
              as List<Feed>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PetCopyWith<$Res> get pet {
    return $PetCopyWith<$Res>(_value.pet, (value) {
      return _then(_value.copyWith(pet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PetDetailStateImplCopyWith<$Res>
    implements $PetDetailStateCopyWith<$Res> {
  factory _$$PetDetailStateImplCopyWith(_$PetDetailStateImpl value,
          $Res Function(_$PetDetailStateImpl) then) =
      __$$PetDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$PetDetailStateImplCopyWithImpl<$Res>
    extends _$PetDetailStateCopyWithImpl<$Res, _$PetDetailStateImpl>
    implements _$$PetDetailStateImplCopyWith<$Res> {
  __$$PetDetailStateImplCopyWithImpl(
      _$PetDetailStateImpl _value, $Res Function(_$PetDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pet = null,
    Object? selectedDate = null,
    Object? calendarEventList = null,
    Object? feedCompletionPercentage = null,
    Object? feedsForSelectedDate = null,
  }) {
    return _then(_$PetDetailStateImpl(
      pet: null == pet
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarEventList: null == calendarEventList
          ? _value.calendarEventList
          : calendarEventList // ignore: cast_nullable_to_non_nullable
              as EventList<Event>,
      feedCompletionPercentage: null == feedCompletionPercentage
          ? _value.feedCompletionPercentage
          : feedCompletionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      feedsForSelectedDate: null == feedsForSelectedDate
          ? _value._feedsForSelectedDate
          : feedsForSelectedDate // ignore: cast_nullable_to_non_nullable
              as List<Feed>,
    ));
  }
}

/// @nodoc

class _$PetDetailStateImpl implements _PetDetailState {
  const _$PetDetailStateImpl(
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
    if (_feedsForSelectedDate is EqualUnmodifiableListView)
      return _feedsForSelectedDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedsForSelectedDate);
  }

  @override
  String toString() {
    return 'PetDetailState(pet: $pet, selectedDate: $selectedDate, calendarEventList: $calendarEventList, feedCompletionPercentage: $feedCompletionPercentage, feedsForSelectedDate: $feedsForSelectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetDetailStateImpl &&
            (identical(other.pet, pet) || other.pet == pet) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.calendarEventList, calendarEventList) ||
                other.calendarEventList == calendarEventList) &&
            (identical(
                    other.feedCompletionPercentage, feedCompletionPercentage) ||
                other.feedCompletionPercentage == feedCompletionPercentage) &&
            const DeepCollectionEquality()
                .equals(other._feedsForSelectedDate, _feedsForSelectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pet,
      selectedDate,
      calendarEventList,
      feedCompletionPercentage,
      const DeepCollectionEquality().hash(_feedsForSelectedDate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetDetailStateImplCopyWith<_$PetDetailStateImpl> get copyWith =>
      __$$PetDetailStateImplCopyWithImpl<_$PetDetailStateImpl>(
          this, _$identity);
}

abstract class _PetDetailState implements PetDetailState {
  const factory _PetDetailState(
      {required final Pet pet,
      required final DateTime selectedDate,
      required final EventList<Event> calendarEventList,
      final double feedCompletionPercentage,
      final List<Feed> feedsForSelectedDate}) = _$PetDetailStateImpl;

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
  _$$PetDetailStateImplCopyWith<_$PetDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
