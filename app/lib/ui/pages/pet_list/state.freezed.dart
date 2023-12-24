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
mixin _$PetState {
  List<Pet> get pets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PetStateCopyWith<PetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetStateCopyWith<$Res> {
  factory $PetStateCopyWith(PetState value, $Res Function(PetState) then) =
      _$PetStateCopyWithImpl<$Res, PetState>;
  @useResult
  $Res call({List<Pet> pets});
}

/// @nodoc
class _$PetStateCopyWithImpl<$Res, $Val extends PetState>
    implements $PetStateCopyWith<$Res> {
  _$PetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pets = null,
  }) {
    return _then(_value.copyWith(
      pets: null == pets
          ? _value.pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetStateImplCopyWith<$Res>
    implements $PetStateCopyWith<$Res> {
  factory _$$PetStateImplCopyWith(
          _$PetStateImpl value, $Res Function(_$PetStateImpl) then) =
      __$$PetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pet> pets});
}

/// @nodoc
class __$$PetStateImplCopyWithImpl<$Res>
    extends _$PetStateCopyWithImpl<$Res, _$PetStateImpl>
    implements _$$PetStateImplCopyWith<$Res> {
  __$$PetStateImplCopyWithImpl(
      _$PetStateImpl _value, $Res Function(_$PetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pets = null,
  }) {
    return _then(_$PetStateImpl(
      pets: null == pets
          ? _value._pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
    ));
  }
}

/// @nodoc

class _$PetStateImpl implements _PetState {
  const _$PetStateImpl({final List<Pet> pets = const []}) : _pets = pets;

  final List<Pet> _pets;
  @override
  @JsonKey()
  List<Pet> get pets {
    if (_pets is EqualUnmodifiableListView) return _pets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pets);
  }

  @override
  String toString() {
    return 'PetState(pets: $pets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetStateImpl &&
            const DeepCollectionEquality().equals(other._pets, _pets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetStateImplCopyWith<_$PetStateImpl> get copyWith =>
      __$$PetStateImplCopyWithImpl<_$PetStateImpl>(this, _$identity);
}

abstract class _PetState implements PetState {
  const factory _PetState({final List<Pet> pets}) = _$PetStateImpl;

  @override
  List<Pet> get pets;
  @override
  @JsonKey(ignore: true)
  _$$PetStateImplCopyWith<_$PetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
