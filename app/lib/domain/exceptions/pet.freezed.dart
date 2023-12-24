// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    required TResult Function() failToScanQR,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PetID petID)? notExists,
    TResult? Function()? alreadyJoined,
    TResult? Function()? emptyList,
    TResult? Function()? failToScanQR,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
    TResult Function()? failToScanQR,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_AlreadyJoined value) alreadyJoined,
    required TResult Function(_EmptyList value) emptyList,
    required TResult Function(_FailToScanQR value) failToScanQR,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotExists value)? notExists,
    TResult? Function(_AlreadyJoined value)? alreadyJoined,
    TResult? Function(_EmptyList value)? emptyList,
    TResult? Function(_FailToScanQR value)? failToScanQR,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
    TResult Function(_FailToScanQR value)? failToScanQR,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetExceptionCopyWith<$Res> {
  factory $PetExceptionCopyWith(
          PetException value, $Res Function(PetException) then) =
      _$PetExceptionCopyWithImpl<$Res, PetException>;
}

/// @nodoc
class _$PetExceptionCopyWithImpl<$Res, $Val extends PetException>
    implements $PetExceptionCopyWith<$Res> {
  _$PetExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotExistsImplCopyWith<$Res> {
  factory _$$NotExistsImplCopyWith(
          _$NotExistsImpl value, $Res Function(_$NotExistsImpl) then) =
      __$$NotExistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PetID petID});

  $PetIDCopyWith<$Res> get petID;
}

/// @nodoc
class __$$NotExistsImplCopyWithImpl<$Res>
    extends _$PetExceptionCopyWithImpl<$Res, _$NotExistsImpl>
    implements _$$NotExistsImplCopyWith<$Res> {
  __$$NotExistsImplCopyWithImpl(
      _$NotExistsImpl _value, $Res Function(_$NotExistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petID = null,
  }) {
    return _then(_$NotExistsImpl(
      null == petID
          ? _value.petID
          : petID // ignore: cast_nullable_to_non_nullable
              as PetID,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PetIDCopyWith<$Res> get petID {
    return $PetIDCopyWith<$Res>(_value.petID, (value) {
      return _then(_value.copyWith(petID: value));
    });
  }
}

/// @nodoc

class _$NotExistsImpl implements _NotExists {
  _$NotExistsImpl(this.petID);

  @override
  final PetID petID;

  @override
  String toString() {
    return 'PetException.notExists(petID: $petID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotExistsImpl &&
            (identical(other.petID, petID) || other.petID == petID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, petID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotExistsImplCopyWith<_$NotExistsImpl> get copyWith =>
      __$$NotExistsImplCopyWithImpl<_$NotExistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetID petID) notExists,
    required TResult Function() alreadyJoined,
    required TResult Function() emptyList,
    required TResult Function() failToScanQR,
  }) {
    return notExists(petID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PetID petID)? notExists,
    TResult? Function()? alreadyJoined,
    TResult? Function()? emptyList,
    TResult? Function()? failToScanQR,
  }) {
    return notExists?.call(petID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
    TResult Function()? failToScanQR,
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
    required TResult Function(_FailToScanQR value) failToScanQR,
  }) {
    return notExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotExists value)? notExists,
    TResult? Function(_AlreadyJoined value)? alreadyJoined,
    TResult? Function(_EmptyList value)? emptyList,
    TResult? Function(_FailToScanQR value)? failToScanQR,
  }) {
    return notExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
    TResult Function(_FailToScanQR value)? failToScanQR,
    required TResult orElse(),
  }) {
    if (notExists != null) {
      return notExists(this);
    }
    return orElse();
  }
}

abstract class _NotExists implements PetException {
  factory _NotExists(final PetID petID) = _$NotExistsImpl;

  PetID get petID;
  @JsonKey(ignore: true)
  _$$NotExistsImplCopyWith<_$NotExistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlreadyJoinedImplCopyWith<$Res> {
  factory _$$AlreadyJoinedImplCopyWith(
          _$AlreadyJoinedImpl value, $Res Function(_$AlreadyJoinedImpl) then) =
      __$$AlreadyJoinedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlreadyJoinedImplCopyWithImpl<$Res>
    extends _$PetExceptionCopyWithImpl<$Res, _$AlreadyJoinedImpl>
    implements _$$AlreadyJoinedImplCopyWith<$Res> {
  __$$AlreadyJoinedImplCopyWithImpl(
      _$AlreadyJoinedImpl _value, $Res Function(_$AlreadyJoinedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AlreadyJoinedImpl implements _AlreadyJoined {
  _$AlreadyJoinedImpl();

  @override
  String toString() {
    return 'PetException.alreadyJoined()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AlreadyJoinedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetID petID) notExists,
    required TResult Function() alreadyJoined,
    required TResult Function() emptyList,
    required TResult Function() failToScanQR,
  }) {
    return alreadyJoined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PetID petID)? notExists,
    TResult? Function()? alreadyJoined,
    TResult? Function()? emptyList,
    TResult? Function()? failToScanQR,
  }) {
    return alreadyJoined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
    TResult Function()? failToScanQR,
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
    required TResult Function(_FailToScanQR value) failToScanQR,
  }) {
    return alreadyJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotExists value)? notExists,
    TResult? Function(_AlreadyJoined value)? alreadyJoined,
    TResult? Function(_EmptyList value)? emptyList,
    TResult? Function(_FailToScanQR value)? failToScanQR,
  }) {
    return alreadyJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
    TResult Function(_FailToScanQR value)? failToScanQR,
    required TResult orElse(),
  }) {
    if (alreadyJoined != null) {
      return alreadyJoined(this);
    }
    return orElse();
  }
}

abstract class _AlreadyJoined implements PetException {
  factory _AlreadyJoined() = _$AlreadyJoinedImpl;
}

/// @nodoc
abstract class _$$EmptyListImplCopyWith<$Res> {
  factory _$$EmptyListImplCopyWith(
          _$EmptyListImpl value, $Res Function(_$EmptyListImpl) then) =
      __$$EmptyListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyListImplCopyWithImpl<$Res>
    extends _$PetExceptionCopyWithImpl<$Res, _$EmptyListImpl>
    implements _$$EmptyListImplCopyWith<$Res> {
  __$$EmptyListImplCopyWithImpl(
      _$EmptyListImpl _value, $Res Function(_$EmptyListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyListImpl implements _EmptyList {
  _$EmptyListImpl();

  @override
  String toString() {
    return 'PetException.emptyList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetID petID) notExists,
    required TResult Function() alreadyJoined,
    required TResult Function() emptyList,
    required TResult Function() failToScanQR,
  }) {
    return emptyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PetID petID)? notExists,
    TResult? Function()? alreadyJoined,
    TResult? Function()? emptyList,
    TResult? Function()? failToScanQR,
  }) {
    return emptyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
    TResult Function()? failToScanQR,
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
    required TResult Function(_FailToScanQR value) failToScanQR,
  }) {
    return emptyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotExists value)? notExists,
    TResult? Function(_AlreadyJoined value)? alreadyJoined,
    TResult? Function(_EmptyList value)? emptyList,
    TResult? Function(_FailToScanQR value)? failToScanQR,
  }) {
    return emptyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
    TResult Function(_FailToScanQR value)? failToScanQR,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList(this);
    }
    return orElse();
  }
}

abstract class _EmptyList implements PetException {
  factory _EmptyList() = _$EmptyListImpl;
}

/// @nodoc
abstract class _$$FailToScanQRImplCopyWith<$Res> {
  factory _$$FailToScanQRImplCopyWith(
          _$FailToScanQRImpl value, $Res Function(_$FailToScanQRImpl) then) =
      __$$FailToScanQRImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailToScanQRImplCopyWithImpl<$Res>
    extends _$PetExceptionCopyWithImpl<$Res, _$FailToScanQRImpl>
    implements _$$FailToScanQRImplCopyWith<$Res> {
  __$$FailToScanQRImplCopyWithImpl(
      _$FailToScanQRImpl _value, $Res Function(_$FailToScanQRImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailToScanQRImpl implements _FailToScanQR {
  _$FailToScanQRImpl();

  @override
  String toString() {
    return 'PetException.failToScanQR()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailToScanQRImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PetID petID) notExists,
    required TResult Function() alreadyJoined,
    required TResult Function() emptyList,
    required TResult Function() failToScanQR,
  }) {
    return failToScanQR();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PetID petID)? notExists,
    TResult? Function()? alreadyJoined,
    TResult? Function()? emptyList,
    TResult? Function()? failToScanQR,
  }) {
    return failToScanQR?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PetID petID)? notExists,
    TResult Function()? alreadyJoined,
    TResult Function()? emptyList,
    TResult Function()? failToScanQR,
    required TResult orElse(),
  }) {
    if (failToScanQR != null) {
      return failToScanQR();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_AlreadyJoined value) alreadyJoined,
    required TResult Function(_EmptyList value) emptyList,
    required TResult Function(_FailToScanQR value) failToScanQR,
  }) {
    return failToScanQR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotExists value)? notExists,
    TResult? Function(_AlreadyJoined value)? alreadyJoined,
    TResult? Function(_EmptyList value)? emptyList,
    TResult? Function(_FailToScanQR value)? failToScanQR,
  }) {
    return failToScanQR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_AlreadyJoined value)? alreadyJoined,
    TResult Function(_EmptyList value)? emptyList,
    TResult Function(_FailToScanQR value)? failToScanQR,
    required TResult orElse(),
  }) {
    if (failToScanQR != null) {
      return failToScanQR(this);
    }
    return orElse();
  }
}

abstract class _FailToScanQR implements PetException {
  factory _FailToScanQR() = _$FailToScanQRImpl;
}
