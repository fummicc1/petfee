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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JoinGroupStateTearOff {
  const _$JoinGroupStateTearOff();

  _JoinGroupState call({required Pet pet, String? errorMessage}) {
    return _JoinGroupState(
      pet: pet,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $JoinGroupState = _$JoinGroupStateTearOff();

/// @nodoc
mixin _$JoinGroupState {
  Pet get pet => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JoinGroupStateCopyWith<JoinGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGroupStateCopyWith<$Res> {
  factory $JoinGroupStateCopyWith(
          JoinGroupState value, $Res Function(JoinGroupState) then) =
      _$JoinGroupStateCopyWithImpl<$Res>;
  $Res call({Pet pet, String? errorMessage});

  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class _$JoinGroupStateCopyWithImpl<$Res>
    implements $JoinGroupStateCopyWith<$Res> {
  _$JoinGroupStateCopyWithImpl(this._value, this._then);

  final JoinGroupState _value;
  // ignore: unused_field
  final $Res Function(JoinGroupState) _then;

  @override
  $Res call({
    Object? pet = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      pet: pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$JoinGroupStateCopyWith<$Res>
    implements $JoinGroupStateCopyWith<$Res> {
  factory _$JoinGroupStateCopyWith(
          _JoinGroupState value, $Res Function(_JoinGroupState) then) =
      __$JoinGroupStateCopyWithImpl<$Res>;
  @override
  $Res call({Pet pet, String? errorMessage});

  @override
  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class __$JoinGroupStateCopyWithImpl<$Res>
    extends _$JoinGroupStateCopyWithImpl<$Res>
    implements _$JoinGroupStateCopyWith<$Res> {
  __$JoinGroupStateCopyWithImpl(
      _JoinGroupState _value, $Res Function(_JoinGroupState) _then)
      : super(_value, (v) => _then(v as _JoinGroupState));

  @override
  _JoinGroupState get _value => super._value as _JoinGroupState;

  @override
  $Res call({
    Object? pet = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_JoinGroupState(
      pet: pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_JoinGroupState implements _JoinGroupState {
  const _$_JoinGroupState({required this.pet, this.errorMessage});

  @override
  final Pet pet;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'JoinGroupState(pet: $pet, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JoinGroupState &&
            const DeepCollectionEquality().equals(other.pet, pet) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pet),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$JoinGroupStateCopyWith<_JoinGroupState> get copyWith =>
      __$JoinGroupStateCopyWithImpl<_JoinGroupState>(this, _$identity);
}

abstract class _JoinGroupState implements JoinGroupState {
  const factory _JoinGroupState({required Pet pet, String? errorMessage}) =
      _$_JoinGroupState;

  @override
  Pet get pet;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$JoinGroupStateCopyWith<_JoinGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}
