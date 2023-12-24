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
mixin _$AddFeedState {
  Pet get pet => throw _privateConstructorUsedError;
  DateTime get fedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddFeedStateCopyWith<AddFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFeedStateCopyWith<$Res> {
  factory $AddFeedStateCopyWith(
          AddFeedState value, $Res Function(AddFeedState) then) =
      _$AddFeedStateCopyWithImpl<$Res, AddFeedState>;
  @useResult
  $Res call({Pet pet, DateTime fedAt});

  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class _$AddFeedStateCopyWithImpl<$Res, $Val extends AddFeedState>
    implements $AddFeedStateCopyWith<$Res> {
  _$AddFeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pet = null,
    Object? fedAt = null,
  }) {
    return _then(_value.copyWith(
      pet: null == pet
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
      fedAt: null == fedAt
          ? _value.fedAt
          : fedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$AddFeedStateImplCopyWith<$Res>
    implements $AddFeedStateCopyWith<$Res> {
  factory _$$AddFeedStateImplCopyWith(
          _$AddFeedStateImpl value, $Res Function(_$AddFeedStateImpl) then) =
      __$$AddFeedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pet pet, DateTime fedAt});

  @override
  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class __$$AddFeedStateImplCopyWithImpl<$Res>
    extends _$AddFeedStateCopyWithImpl<$Res, _$AddFeedStateImpl>
    implements _$$AddFeedStateImplCopyWith<$Res> {
  __$$AddFeedStateImplCopyWithImpl(
      _$AddFeedStateImpl _value, $Res Function(_$AddFeedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pet = null,
    Object? fedAt = null,
  }) {
    return _then(_$AddFeedStateImpl(
      pet: null == pet
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
      fedAt: null == fedAt
          ? _value.fedAt
          : fedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$AddFeedStateImpl implements _AddFeedState {
  _$AddFeedStateImpl({required this.pet, required this.fedAt});

  @override
  final Pet pet;
  @override
  final DateTime fedAt;

  @override
  String toString() {
    return 'AddFeedState(pet: $pet, fedAt: $fedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFeedStateImpl &&
            (identical(other.pet, pet) || other.pet == pet) &&
            (identical(other.fedAt, fedAt) || other.fedAt == fedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pet, fedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFeedStateImplCopyWith<_$AddFeedStateImpl> get copyWith =>
      __$$AddFeedStateImplCopyWithImpl<_$AddFeedStateImpl>(this, _$identity);
}

abstract class _AddFeedState implements AddFeedState {
  factory _AddFeedState(
      {required final Pet pet,
      required final DateTime fedAt}) = _$AddFeedStateImpl;

  @override
  Pet get pet;
  @override
  DateTime get fedAt;
  @override
  @JsonKey(ignore: true)
  _$$AddFeedStateImplCopyWith<_$AddFeedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
