// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserID _$UserIDFromJson(Map<String, dynamic> json) {
  return _UserID.fromJson(json);
}

/// @nodoc
class _$UserIDTearOff {
  const _$UserIDTearOff();

  _UserID call(String value) {
    return _UserID(
      value,
    );
  }

  UserID fromJson(Map<String, Object?> json) {
    return UserID.fromJson(json);
  }
}

/// @nodoc
const $UserID = _$UserIDTearOff();

/// @nodoc
mixin _$UserID {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIDCopyWith<UserID> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIDCopyWith<$Res> {
  factory $UserIDCopyWith(UserID value, $Res Function(UserID) then) =
      _$UserIDCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$UserIDCopyWithImpl<$Res> implements $UserIDCopyWith<$Res> {
  _$UserIDCopyWithImpl(this._value, this._then);

  final UserID _value;
  // ignore: unused_field
  final $Res Function(UserID) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserIDCopyWith<$Res> implements $UserIDCopyWith<$Res> {
  factory _$UserIDCopyWith(_UserID value, $Res Function(_UserID) then) =
      __$UserIDCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$UserIDCopyWithImpl<$Res> extends _$UserIDCopyWithImpl<$Res>
    implements _$UserIDCopyWith<$Res> {
  __$UserIDCopyWithImpl(_UserID _value, $Res Function(_UserID) _then)
      : super(_value, (v) => _then(v as _UserID));

  @override
  _UserID get _value => super._value as _UserID;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_UserID(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserID with DiagnosticableTreeMixin implements _UserID {
  const _$_UserID(this.value);

  factory _$_UserID.fromJson(Map<String, dynamic> json) =>
      _$$_UserIDFromJson(json);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserID(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserID'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserID &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$UserIDCopyWith<_UserID> get copyWith =>
      __$UserIDCopyWithImpl<_UserID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserIDToJson(this);
  }
}

abstract class _UserID implements UserID {
  const factory _UserID(String value) = _$_UserID;

  factory _UserID.fromJson(Map<String, dynamic> json) = _$_UserID.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$UserIDCopyWith<_UserID> get copyWith => throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required UserID userID,
      required String authID,
      required bool isAnonymous}) {
    return _User(
      userID: userID,
      authID: authID,
      isAnonymous: isAnonymous,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UserID get userID => throw _privateConstructorUsedError;
  String get authID => throw _privateConstructorUsedError;
  bool get isAnonymous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({UserID userID, String authID, bool isAnonymous});

  $UserIDCopyWith<$Res> get userID;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? userID = freezed,
    Object? authID = freezed,
    Object? isAnonymous = freezed,
  }) {
    return _then(_value.copyWith(
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID,
      authID: authID == freezed
          ? _value.authID
          : authID // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: isAnonymous == freezed
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserIDCopyWith<$Res> get userID {
    return $UserIDCopyWith<$Res>(_value.userID, (value) {
      return _then(_value.copyWith(userID: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({UserID userID, String authID, bool isAnonymous});

  @override
  $UserIDCopyWith<$Res> get userID;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? userID = freezed,
    Object? authID = freezed,
    Object? isAnonymous = freezed,
  }) {
    return _then(_User(
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID,
      authID: authID == freezed
          ? _value.authID
          : authID // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: isAnonymous == freezed
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {required this.userID, required this.authID, required this.isAnonymous});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final UserID userID;
  @override
  final String authID;
  @override
  final bool isAnonymous;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(userID: $userID, authID: $authID, isAnonymous: $isAnonymous)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('authID', authID))
      ..add(DiagnosticsProperty('isAnonymous', isAnonymous));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.userID, userID) &&
            const DeepCollectionEquality().equals(other.authID, authID) &&
            const DeepCollectionEquality()
                .equals(other.isAnonymous, isAnonymous));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userID),
      const DeepCollectionEquality().hash(authID),
      const DeepCollectionEquality().hash(isAnonymous));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required UserID userID,
      required String authID,
      required bool isAnonymous}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  UserID get userID;
  @override
  String get authID;
  @override
  bool get isAnonymous;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
