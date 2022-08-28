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
mixin _$AddFeedState {
  Pet get pet => throw _privateConstructorUsedError;
  DateTime get feededAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddFeedStateCopyWith<AddFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFeedStateCopyWith<$Res> {
  factory $AddFeedStateCopyWith(
          AddFeedState value, $Res Function(AddFeedState) then) =
      _$AddFeedStateCopyWithImpl<$Res>;
  $Res call({Pet pet, DateTime feededAt});

  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class _$AddFeedStateCopyWithImpl<$Res> implements $AddFeedStateCopyWith<$Res> {
  _$AddFeedStateCopyWithImpl(this._value, this._then);

  final AddFeedState _value;
  // ignore: unused_field
  final $Res Function(AddFeedState) _then;

  @override
  $Res call({
    Object? pet = freezed,
    Object? feededAt = freezed,
  }) {
    return _then(_value.copyWith(
      pet: pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
      feededAt: feededAt == freezed
          ? _value.feededAt
          : feededAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$_AddFeedStateCopyWith<$Res>
    implements $AddFeedStateCopyWith<$Res> {
  factory _$$_AddFeedStateCopyWith(
          _$_AddFeedState value, $Res Function(_$_AddFeedState) then) =
      __$$_AddFeedStateCopyWithImpl<$Res>;
  @override
  $Res call({Pet pet, DateTime feededAt});

  @override
  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class __$$_AddFeedStateCopyWithImpl<$Res>
    extends _$AddFeedStateCopyWithImpl<$Res>
    implements _$$_AddFeedStateCopyWith<$Res> {
  __$$_AddFeedStateCopyWithImpl(
      _$_AddFeedState _value, $Res Function(_$_AddFeedState) _then)
      : super(_value, (v) => _then(v as _$_AddFeedState));

  @override
  _$_AddFeedState get _value => super._value as _$_AddFeedState;

  @override
  $Res call({
    Object? pet = freezed,
    Object? feededAt = freezed,
  }) {
    return _then(_$_AddFeedState(
      pet: pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
      feededAt: feededAt == freezed
          ? _value.feededAt
          : feededAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_AddFeedState implements _AddFeedState {
  _$_AddFeedState({required this.pet, required this.feededAt});

  @override
  final Pet pet;
  @override
  final DateTime feededAt;

  @override
  String toString() {
    return 'AddFeedState(pet: $pet, feededAt: $feededAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddFeedState &&
            const DeepCollectionEquality().equals(other.pet, pet) &&
            const DeepCollectionEquality().equals(other.feededAt, feededAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pet),
      const DeepCollectionEquality().hash(feededAt));

  @JsonKey(ignore: true)
  @override
  _$$_AddFeedStateCopyWith<_$_AddFeedState> get copyWith =>
      __$$_AddFeedStateCopyWithImpl<_$_AddFeedState>(this, _$identity);
}

abstract class _AddFeedState implements AddFeedState {
  factory _AddFeedState(
      {required final Pet pet,
      required final DateTime feededAt}) = _$_AddFeedState;

  @override
  Pet get pet;
  @override
  DateTime get feededAt;
  @override
  @JsonKey(ignore: true)
  _$$_AddFeedStateCopyWith<_$_AddFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}
