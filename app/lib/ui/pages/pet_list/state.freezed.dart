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
mixin _$PetState {
  List<Pet> get pets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PetStateCopyWith<PetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetStateCopyWith<$Res> {
  factory $PetStateCopyWith(PetState value, $Res Function(PetState) then) =
      _$PetStateCopyWithImpl<$Res>;
  $Res call({List<Pet> pets});
}

/// @nodoc
class _$PetStateCopyWithImpl<$Res> implements $PetStateCopyWith<$Res> {
  _$PetStateCopyWithImpl(this._value, this._then);

  final PetState _value;
  // ignore: unused_field
  final $Res Function(PetState) _then;

  @override
  $Res call({
    Object? pets = freezed,
  }) {
    return _then(_value.copyWith(
      pets: pets == freezed
          ? _value.pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
    ));
  }
}

/// @nodoc
abstract class _$$_PetStateCopyWith<$Res> implements $PetStateCopyWith<$Res> {
  factory _$$_PetStateCopyWith(
          _$_PetState value, $Res Function(_$_PetState) then) =
      __$$_PetStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Pet> pets});
}

/// @nodoc
class __$$_PetStateCopyWithImpl<$Res> extends _$PetStateCopyWithImpl<$Res>
    implements _$$_PetStateCopyWith<$Res> {
  __$$_PetStateCopyWithImpl(
      _$_PetState _value, $Res Function(_$_PetState) _then)
      : super(_value, (v) => _then(v as _$_PetState));

  @override
  _$_PetState get _value => super._value as _$_PetState;

  @override
  $Res call({
    Object? pets = freezed,
  }) {
    return _then(_$_PetState(
      pets: pets == freezed
          ? _value._pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
    ));
  }
}

/// @nodoc

class _$_PetState implements _PetState {
  const _$_PetState({final List<Pet> pets = const []}) : _pets = pets;

  final List<Pet> _pets;
  @override
  @JsonKey()
  List<Pet> get pets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pets);
  }

  @override
  String toString() {
    return 'PetState(pets: $pets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetState &&
            const DeepCollectionEquality().equals(other._pets, _pets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pets));

  @JsonKey(ignore: true)
  @override
  _$$_PetStateCopyWith<_$_PetState> get copyWith =>
      __$$_PetStateCopyWithImpl<_$_PetState>(this, _$identity);
}

abstract class _PetState implements PetState {
  const factory _PetState({final List<Pet> pets}) = _$_PetState;

  @override
  List<Pet> get pets;
  @override
  @JsonKey(ignore: true)
  _$$_PetStateCopyWith<_$_PetState> get copyWith =>
      throw _privateConstructorUsedError;
}
