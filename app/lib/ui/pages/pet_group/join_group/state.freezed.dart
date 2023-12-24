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
      _$JoinGroupStateCopyWithImpl<$Res, JoinGroupState>;
  @useResult
  $Res call({Pet pet, String? errorMessage});

  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class _$JoinGroupStateCopyWithImpl<$Res, $Val extends JoinGroupState>
    implements $JoinGroupStateCopyWith<$Res> {
  _$JoinGroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pet = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      pet: null == pet
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$JoinGroupStateImplCopyWith<$Res>
    implements $JoinGroupStateCopyWith<$Res> {
  factory _$$JoinGroupStateImplCopyWith(_$JoinGroupStateImpl value,
          $Res Function(_$JoinGroupStateImpl) then) =
      __$$JoinGroupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pet pet, String? errorMessage});

  @override
  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class __$$JoinGroupStateImplCopyWithImpl<$Res>
    extends _$JoinGroupStateCopyWithImpl<$Res, _$JoinGroupStateImpl>
    implements _$$JoinGroupStateImplCopyWith<$Res> {
  __$$JoinGroupStateImplCopyWithImpl(
      _$JoinGroupStateImpl _value, $Res Function(_$JoinGroupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pet = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$JoinGroupStateImpl(
      pet: null == pet
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as Pet,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$JoinGroupStateImpl implements _JoinGroupState {
  const _$JoinGroupStateImpl({required this.pet, this.errorMessage});

  @override
  final Pet pet;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'JoinGroupState(pet: $pet, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinGroupStateImpl &&
            (identical(other.pet, pet) || other.pet == pet) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pet, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinGroupStateImplCopyWith<_$JoinGroupStateImpl> get copyWith =>
      __$$JoinGroupStateImplCopyWithImpl<_$JoinGroupStateImpl>(
          this, _$identity);
}

abstract class _JoinGroupState implements JoinGroupState {
  const factory _JoinGroupState(
      {required final Pet pet,
      final String? errorMessage}) = _$JoinGroupStateImpl;

  @override
  Pet get pet;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$JoinGroupStateImplCopyWith<_$JoinGroupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
