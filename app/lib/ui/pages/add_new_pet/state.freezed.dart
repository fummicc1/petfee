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
mixin _$AddNewPetState {
  String get petName => throw _privateConstructorUsedError;
  int get numberOfFeedPerDay => throw _privateConstructorUsedError;
  bool get showLoading => throw _privateConstructorUsedError;
  bool get canCompleteNewPetSettings => throw _privateConstructorUsedError;
  XFile? get petAvatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNewPetStateCopyWith<AddNewPetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewPetStateCopyWith<$Res> {
  factory $AddNewPetStateCopyWith(
          AddNewPetState value, $Res Function(AddNewPetState) then) =
      _$AddNewPetStateCopyWithImpl<$Res, AddNewPetState>;
  @useResult
  $Res call(
      {String petName,
      int numberOfFeedPerDay,
      bool showLoading,
      bool canCompleteNewPetSettings,
      XFile? petAvatar});
}

/// @nodoc
class _$AddNewPetStateCopyWithImpl<$Res, $Val extends AddNewPetState>
    implements $AddNewPetStateCopyWith<$Res> {
  _$AddNewPetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petName = null,
    Object? numberOfFeedPerDay = null,
    Object? showLoading = null,
    Object? canCompleteNewPetSettings = null,
    Object? petAvatar = freezed,
  }) {
    return _then(_value.copyWith(
      petName: null == petName
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfFeedPerDay: null == numberOfFeedPerDay
          ? _value.numberOfFeedPerDay
          : numberOfFeedPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      canCompleteNewPetSettings: null == canCompleteNewPetSettings
          ? _value.canCompleteNewPetSettings
          : canCompleteNewPetSettings // ignore: cast_nullable_to_non_nullable
              as bool,
      petAvatar: freezed == petAvatar
          ? _value.petAvatar
          : petAvatar // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddNewPetStateImplCopyWith<$Res>
    implements $AddNewPetStateCopyWith<$Res> {
  factory _$$AddNewPetStateImplCopyWith(_$AddNewPetStateImpl value,
          $Res Function(_$AddNewPetStateImpl) then) =
      __$$AddNewPetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String petName,
      int numberOfFeedPerDay,
      bool showLoading,
      bool canCompleteNewPetSettings,
      XFile? petAvatar});
}

/// @nodoc
class __$$AddNewPetStateImplCopyWithImpl<$Res>
    extends _$AddNewPetStateCopyWithImpl<$Res, _$AddNewPetStateImpl>
    implements _$$AddNewPetStateImplCopyWith<$Res> {
  __$$AddNewPetStateImplCopyWithImpl(
      _$AddNewPetStateImpl _value, $Res Function(_$AddNewPetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petName = null,
    Object? numberOfFeedPerDay = null,
    Object? showLoading = null,
    Object? canCompleteNewPetSettings = null,
    Object? petAvatar = freezed,
  }) {
    return _then(_$AddNewPetStateImpl(
      petName: null == petName
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfFeedPerDay: null == numberOfFeedPerDay
          ? _value.numberOfFeedPerDay
          : numberOfFeedPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      canCompleteNewPetSettings: null == canCompleteNewPetSettings
          ? _value.canCompleteNewPetSettings
          : canCompleteNewPetSettings // ignore: cast_nullable_to_non_nullable
              as bool,
      petAvatar: freezed == petAvatar
          ? _value.petAvatar
          : petAvatar // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$AddNewPetStateImpl implements _AddNewPetState {
  _$AddNewPetStateImpl(
      {this.petName = "",
      this.numberOfFeedPerDay = 2,
      this.showLoading = false,
      this.canCompleteNewPetSettings = false,
      this.petAvatar});

  @override
  @JsonKey()
  final String petName;
  @override
  @JsonKey()
  final int numberOfFeedPerDay;
  @override
  @JsonKey()
  final bool showLoading;
  @override
  @JsonKey()
  final bool canCompleteNewPetSettings;
  @override
  final XFile? petAvatar;

  @override
  String toString() {
    return 'AddNewPetState(petName: $petName, numberOfFeedPerDay: $numberOfFeedPerDay, showLoading: $showLoading, canCompleteNewPetSettings: $canCompleteNewPetSettings, petAvatar: $petAvatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewPetStateImpl &&
            (identical(other.petName, petName) || other.petName == petName) &&
            (identical(other.numberOfFeedPerDay, numberOfFeedPerDay) ||
                other.numberOfFeedPerDay == numberOfFeedPerDay) &&
            (identical(other.showLoading, showLoading) ||
                other.showLoading == showLoading) &&
            (identical(other.canCompleteNewPetSettings,
                    canCompleteNewPetSettings) ||
                other.canCompleteNewPetSettings == canCompleteNewPetSettings) &&
            (identical(other.petAvatar, petAvatar) ||
                other.petAvatar == petAvatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, petName, numberOfFeedPerDay,
      showLoading, canCompleteNewPetSettings, petAvatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewPetStateImplCopyWith<_$AddNewPetStateImpl> get copyWith =>
      __$$AddNewPetStateImplCopyWithImpl<_$AddNewPetStateImpl>(
          this, _$identity);
}

abstract class _AddNewPetState implements AddNewPetState {
  factory _AddNewPetState(
      {final String petName,
      final int numberOfFeedPerDay,
      final bool showLoading,
      final bool canCompleteNewPetSettings,
      final XFile? petAvatar}) = _$AddNewPetStateImpl;

  @override
  String get petName;
  @override
  int get numberOfFeedPerDay;
  @override
  bool get showLoading;
  @override
  bool get canCompleteNewPetSettings;
  @override
  XFile? get petAvatar;
  @override
  @JsonKey(ignore: true)
  _$$AddNewPetStateImplCopyWith<_$AddNewPetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
