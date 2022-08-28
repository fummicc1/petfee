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
      _$AddNewPetStateCopyWithImpl<$Res>;
  $Res call(
      {String petName,
      int numberOfFeedPerDay,
      bool showLoading,
      bool canCompleteNewPetSettings,
      XFile? petAvatar});
}

/// @nodoc
class _$AddNewPetStateCopyWithImpl<$Res>
    implements $AddNewPetStateCopyWith<$Res> {
  _$AddNewPetStateCopyWithImpl(this._value, this._then);

  final AddNewPetState _value;
  // ignore: unused_field
  final $Res Function(AddNewPetState) _then;

  @override
  $Res call({
    Object? petName = freezed,
    Object? numberOfFeedPerDay = freezed,
    Object? showLoading = freezed,
    Object? canCompleteNewPetSettings = freezed,
    Object? petAvatar = freezed,
  }) {
    return _then(_value.copyWith(
      petName: petName == freezed
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfFeedPerDay: numberOfFeedPerDay == freezed
          ? _value.numberOfFeedPerDay
          : numberOfFeedPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      showLoading: showLoading == freezed
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      canCompleteNewPetSettings: canCompleteNewPetSettings == freezed
          ? _value.canCompleteNewPetSettings
          : canCompleteNewPetSettings // ignore: cast_nullable_to_non_nullable
              as bool,
      petAvatar: petAvatar == freezed
          ? _value.petAvatar
          : petAvatar // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc
abstract class _$$_AddNewPetStateCopyWith<$Res>
    implements $AddNewPetStateCopyWith<$Res> {
  factory _$$_AddNewPetStateCopyWith(
          _$_AddNewPetState value, $Res Function(_$_AddNewPetState) then) =
      __$$_AddNewPetStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String petName,
      int numberOfFeedPerDay,
      bool showLoading,
      bool canCompleteNewPetSettings,
      XFile? petAvatar});
}

/// @nodoc
class __$$_AddNewPetStateCopyWithImpl<$Res>
    extends _$AddNewPetStateCopyWithImpl<$Res>
    implements _$$_AddNewPetStateCopyWith<$Res> {
  __$$_AddNewPetStateCopyWithImpl(
      _$_AddNewPetState _value, $Res Function(_$_AddNewPetState) _then)
      : super(_value, (v) => _then(v as _$_AddNewPetState));

  @override
  _$_AddNewPetState get _value => super._value as _$_AddNewPetState;

  @override
  $Res call({
    Object? petName = freezed,
    Object? numberOfFeedPerDay = freezed,
    Object? showLoading = freezed,
    Object? canCompleteNewPetSettings = freezed,
    Object? petAvatar = freezed,
  }) {
    return _then(_$_AddNewPetState(
      petName: petName == freezed
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfFeedPerDay: numberOfFeedPerDay == freezed
          ? _value.numberOfFeedPerDay
          : numberOfFeedPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      showLoading: showLoading == freezed
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      canCompleteNewPetSettings: canCompleteNewPetSettings == freezed
          ? _value.canCompleteNewPetSettings
          : canCompleteNewPetSettings // ignore: cast_nullable_to_non_nullable
              as bool,
      petAvatar: petAvatar == freezed
          ? _value.petAvatar
          : petAvatar // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_AddNewPetState implements _AddNewPetState {
  _$_AddNewPetState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewPetState &&
            const DeepCollectionEquality().equals(other.petName, petName) &&
            const DeepCollectionEquality()
                .equals(other.numberOfFeedPerDay, numberOfFeedPerDay) &&
            const DeepCollectionEquality()
                .equals(other.showLoading, showLoading) &&
            const DeepCollectionEquality().equals(
                other.canCompleteNewPetSettings, canCompleteNewPetSettings) &&
            const DeepCollectionEquality().equals(other.petAvatar, petAvatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(petName),
      const DeepCollectionEquality().hash(numberOfFeedPerDay),
      const DeepCollectionEquality().hash(showLoading),
      const DeepCollectionEquality().hash(canCompleteNewPetSettings),
      const DeepCollectionEquality().hash(petAvatar));

  @JsonKey(ignore: true)
  @override
  _$$_AddNewPetStateCopyWith<_$_AddNewPetState> get copyWith =>
      __$$_AddNewPetStateCopyWithImpl<_$_AddNewPetState>(this, _$identity);
}

abstract class _AddNewPetState implements AddNewPetState {
  factory _AddNewPetState(
      {final String petName,
      final int numberOfFeedPerDay,
      final bool showLoading,
      final bool canCompleteNewPetSettings,
      final XFile? petAvatar}) = _$_AddNewPetState;

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
  _$$_AddNewPetStateCopyWith<_$_AddNewPetState> get copyWith =>
      throw _privateConstructorUsedError;
}
