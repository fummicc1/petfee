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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PetException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetID petID) notExists,
    required TResult Function() alreadyJoined,
    required TResult Function() emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_AlreadyJoined value) alreadyJoined,
    required TResult Function(_EmptyList value) emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
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
abstract class _$$_NotExistsCopyWith<$Res> {
  factory _$$_NotExistsCopyWith(
          _$_NotExists value, $Res Function(_$_NotExists) then) =
      __$$_NotExistsCopyWithImpl<$Res>;
  $Res call({PetID petID});

  $PetIDCopyWith<$Res> get petID;
}

/// @nodoc
class __$$_NotExistsCopyWithImpl<$Res> extends _$PetExceptionCopyWithImpl<$Res>
    implements _$$_NotExistsCopyWith<$Res> {
  __$$_NotExistsCopyWithImpl(
      _$_NotExists _value, $Res Function(_$_NotExists) _then)
      : super(_value, (v) => _then(v as _$_NotExists));

  @override
  _$_NotExists get _value => super._value as _$_NotExists;

  @override
  $Res call({
    Object? petID = freezed,
  }) {
    return _then(_$_NotExists(
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
            other is _$_NotExists &&
            const DeepCollectionEquality().equals(other.petID, petID));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(petID));

  @JsonKey(ignore: true)
  @override
  _$$_NotExistsCopyWith<_$_NotExists> get copyWith =>
      __$$_NotExistsCopyWithImpl<_$_NotExists>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetID petID) notExists,
    required TResult Function() alreadyJoined,
    required TResult Function() emptyList,
  }) {
    return notExists(petID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
  }) {
    return notExists?.call(petID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
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
    required TResult Function(_EmptyList value) emptyList,
  }) {
    return notExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
  }) {
    return notExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
    required TResult orElse(),
  }) {
    if (notExists != null) {
      return notExists(this);
    }
    return orElse();
  }
}

abstract class _NotExists implements PetException {
  factory _NotExists(final PetID petID) = _$_NotExists;

  PetID get petID;
  @JsonKey(ignore: true)
  _$$_NotExistsCopyWith<_$_NotExists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AlreadyJoinedCopyWith<$Res> {
  factory _$$_AlreadyJoinedCopyWith(
          _$_AlreadyJoined value, $Res Function(_$_AlreadyJoined) then) =
      __$$_AlreadyJoinedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AlreadyJoinedCopyWithImpl<$Res>
    extends _$PetExceptionCopyWithImpl<$Res>
    implements _$$_AlreadyJoinedCopyWith<$Res> {
  __$$_AlreadyJoinedCopyWithImpl(
      _$_AlreadyJoined _value, $Res Function(_$_AlreadyJoined) _then)
      : super(_value, (v) => _then(v as _$_AlreadyJoined));

  @override
  _$_AlreadyJoined get _value => super._value as _$_AlreadyJoined;
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
        (other.runtimeType == runtimeType && other is _$_AlreadyJoined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetID petID) notExists,
    required TResult Function() alreadyJoined,
    required TResult Function() emptyList,
  }) {
    return alreadyJoined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
  }) {
    return alreadyJoined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
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
    required TResult Function(_EmptyList value) emptyList,
  }) {
    return alreadyJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
  }) {
    return alreadyJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
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

/// @nodoc
abstract class _$$_EmptyListCopyWith<$Res> {
  factory _$$_EmptyListCopyWith(
          _$_EmptyList value, $Res Function(_$_EmptyList) then) =
      __$$_EmptyListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyListCopyWithImpl<$Res> extends _$PetExceptionCopyWithImpl<$Res>
    implements _$$_EmptyListCopyWith<$Res> {
  __$$_EmptyListCopyWithImpl(
      _$_EmptyList _value, $Res Function(_$_EmptyList) _then)
      : super(_value, (v) => _then(v as _$_EmptyList));

  @override
  _$_EmptyList get _value => super._value as _$_EmptyList;
}

/// @nodoc

class _$_EmptyList implements _EmptyList {
  _$_EmptyList();

  @override
  String toString() {
    return 'PetException.emptyList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmptyList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetID petID) notExists,
    required TResult Function() alreadyJoined,
    required TResult Function() emptyList,
  }) {
    return emptyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
  }) {
    return emptyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_AlreadyJoined value) alreadyJoined,
    required TResult Function(_EmptyList value) emptyList,
  }) {
    return emptyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
  }) {
    return emptyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList(this);
    }
    return orElse();
  }
}

abstract class _EmptyList implements PetException {
  factory _EmptyList() = _$_EmptyList;
}
