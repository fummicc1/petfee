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
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call({dynamic isLoggedIn = false}) {
    return _AuthState(
      isLoggedIn: isLoggedIn,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  dynamic get isLoggedIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call({dynamic isLoggedIn});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? isLoggedIn = freezed,
  }) {
    return _then(_value.copyWith(
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic isLoggedIn});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? isLoggedIn = freezed,
  }) {
    return _then(_AuthState(
      isLoggedIn: isLoggedIn == freezed ? _value.isLoggedIn : isLoggedIn,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState({this.isLoggedIn = false});

  @JsonKey()
  @override
  final dynamic isLoggedIn;

  @override
  String toString() {
    return 'AuthState(isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            const DeepCollectionEquality()
                .equals(other.isLoggedIn, isLoggedIn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoggedIn));

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({dynamic isLoggedIn}) = _$_AuthState;

  @override
  dynamic get isLoggedIn;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
