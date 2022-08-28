// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PetExceptionTearOff {
  const _$PetExceptionTearOff();

  _NotExists notExists(PetID petID) {
    return _NotExists(
      petID,
    );
  }

  _AlreadyJoined alreadyJoined() {
    return _AlreadyJoined();
  }
}

/// @nodoc
const $PetException = _$PetExceptionTearOff();

/// @nodoc
mixin _$PetException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetID petID) notExists,
    required TResult Function() alreadyJoined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_AlreadyJoined value) alreadyJoined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetExceptionCopyWith<$Res> {
  factory $PetExceptionCopyWith(
          PetException value, $Res Function(PetException) then) =
      _$PetExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$PetExceptionCopyWithImpl<$Res> implements $PetExceptionCopyWith<$Res> {
  _$PetExceptionCopyWithImpl(this._value, this._then);

  final PetException _value;
  // ignore: unused_field
  final $Res Function(PetException) _then;
}

/// @nodoc
abstract class _$NotExistsCopyWith<$Res> {
  factory _$NotExistsCopyWith(
          _NotExists value, $Res Function(_NotExists) then) =
      __$NotExistsCopyWithImpl<$Res>;
  $Res call({PetID petID});

  $PetIDCopyWith<$Res> get petID;
}

/// @nodoc
class __$NotExistsCopyWithImpl<$Res> extends _$PetExceptionCopyWithImpl<$Res>
    implements _$NotExistsCopyWith<$Res> {
  __$NotExistsCopyWithImpl(_NotExists _value, $Res Function(_NotExists) _then)
      : super(_value, (v) => _then(v as _NotExists));

  @override
  _NotExists get _value => super._value as _NotExists;

  @override
  $Res call({
    Object? petID = freezed,
  }) {
    return _then(_NotExists(
      petID == freezed
          ? _value.petID
          : petID // ignore: cast_nullable_to_non_nullable
              as PetID,
    ));
  }

  @override
  $PetIDCopyWith<$Res> get petID {
    return $PetIDCopyWith<$Res>(_value.petID, (value) {
      return _then(_value.copyWith(petID: value));
    });
  }
}

/// @nodoc

class _$_NotExists implements _NotExists {
  _$_NotExists(this.petID);

  @override
  final PetID petID;

  @override
  String toString() {
    return 'PetException.notExists(petID: $petID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotExists &&
            const DeepCollectionEquality().equals(other.petID, petID));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(petID));

  @JsonKey(ignore: true)
  @override
  _$NotExistsCopyWith<_NotExists> get copyWith =>
      __$NotExistsCopyWithImpl<_NotExists>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetID petID) notExists,
    required TResult Function() alreadyJoined,
  }) {
    return notExists(petID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
  }) {
    return notExists?.call(petID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    required TResult orElse(),
  }) {
    if (notExists != null) {
      return notExists(petID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_AlreadyJoined value) alreadyJoined,
  }) {
    return notExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
  }) {
    return notExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    required TResult orElse(),
  }) {
    if (notExists != null) {
      return notExists(this);
    }
    return orElse();
  }
}

abstract class _NotExists implements PetException {
  factory _NotExists(PetID petID) = _$_NotExists;

  PetID get petID;
  @JsonKey(ignore: true)
  _$NotExistsCopyWith<_NotExists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AlreadyJoinedCopyWith<$Res> {
  factory _$AlreadyJoinedCopyWith(
          _AlreadyJoined value, $Res Function(_AlreadyJoined) then) =
      __$AlreadyJoinedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AlreadyJoinedCopyWithImpl<$Res>
    extends _$PetExceptionCopyWithImpl<$Res>
    implements _$AlreadyJoinedCopyWith<$Res> {
  __$AlreadyJoinedCopyWithImpl(
      _AlreadyJoined _value, $Res Function(_AlreadyJoined) _then)
      : super(_value, (v) => _then(v as _AlreadyJoined));

  @override
  _AlreadyJoined get _value => super._value as _AlreadyJoined;
}

/// @nodoc

class _$_AlreadyJoined implements _AlreadyJoined {
  _$_AlreadyJoined();

  @override
  String toString() {
    return 'PetException.alreadyJoined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AlreadyJoined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetID petID) notExists,
    required TResult Function() alreadyJoined,
  }) {
    return alreadyJoined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
  }) {
    return alreadyJoined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    required TResult orElse(),
  }) {
    if (alreadyJoined != null) {
      return alreadyJoined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_AlreadyJoined value) alreadyJoined,
  }) {
    return alreadyJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
  }) {
    return alreadyJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    required TResult orElse(),
  }) {
    if (alreadyJoined != null) {
      return alreadyJoined(this);
    }
    return orElse();
  }
}

abstract class _AlreadyJoined implements PetException {
  factory _AlreadyJoined() = _$_AlreadyJoined;
}
