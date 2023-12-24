// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLoggedIn value) notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotLoggedIn value)? notLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExceptionCopyWith<$Res> {
  factory $AuthExceptionCopyWith(
          AuthException value, $Res Function(AuthException) then) =
      _$AuthExceptionCopyWithImpl<$Res, AuthException>;
}

/// @nodoc
class _$AuthExceptionCopyWithImpl<$Res, $Val extends AuthException>
    implements $AuthExceptionCopyWith<$Res> {
  _$AuthExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotLoggedInImplCopyWith<$Res> {
  factory _$$NotLoggedInImplCopyWith(
          _$NotLoggedInImpl value, $Res Function(_$NotLoggedInImpl) then) =
      __$$NotLoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotLoggedInImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$NotLoggedInImpl>
    implements _$$NotLoggedInImplCopyWith<$Res> {
  __$$NotLoggedInImplCopyWithImpl(
      _$NotLoggedInImpl _value, $Res Function(_$NotLoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotLoggedInImpl implements _NotLoggedIn {
  _$NotLoggedInImpl();

  @override
  String toString() {
    return 'AuthException.notLoggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotLoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
  }) {
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLoggedIn,
  }) {
    return notLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLoggedIn value) notLoggedIn,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotLoggedIn value)? notLoggedIn,
  }) {
    return notLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLoggedIn value)? notLoggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _NotLoggedIn implements AuthException {
  factory _NotLoggedIn() = _$NotLoggedInImpl;
}
