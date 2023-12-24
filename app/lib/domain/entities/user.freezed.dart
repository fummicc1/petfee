// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserID _$UserIDFromJson(Map<String, dynamic> json) {
  return _UserID.fromJson(json);
}

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
      _$UserIDCopyWithImpl<$Res, UserID>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$UserIDCopyWithImpl<$Res, $Val extends UserID>
    implements $UserIDCopyWith<$Res> {
  _$UserIDCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserIDImplCopyWith<$Res> implements $UserIDCopyWith<$Res> {
  factory _$$UserIDImplCopyWith(
          _$UserIDImpl value, $Res Function(_$UserIDImpl) then) =
      __$$UserIDImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserIDImplCopyWithImpl<$Res>
    extends _$UserIDCopyWithImpl<$Res, _$UserIDImpl>
    implements _$$UserIDImplCopyWith<$Res> {
  __$$UserIDImplCopyWithImpl(
      _$UserIDImpl _value, $Res Function(_$UserIDImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserIDImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIDImpl with DiagnosticableTreeMixin implements _UserID {
  const _$UserIDImpl(this.value);

  factory _$UserIDImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIDImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIDImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIDImplCopyWith<_$UserIDImpl> get copyWith =>
      __$$UserIDImplCopyWithImpl<_$UserIDImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIDImplToJson(
      this,
    );
  }
}

abstract class _UserID implements UserID {
  const factory _UserID(final String value) = _$UserIDImpl;

  factory _UserID.fromJson(Map<String, dynamic> json) = _$UserIDImpl.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$UserIDImplCopyWith<_$UserIDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  UserID get userID => throw _privateConstructorUsedError;
  String get authID => throw _privateConstructorUsedError;
  bool get isAnonymous => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {UserID userID,
      String authID,
      bool isAnonymous,
      DateTime createdAt,
      DateTime updatedAt});

  $UserIDCopyWith<$Res> get userID;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? authID = null,
    Object? isAnonymous = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID,
      authID: null == authID
          ? _value.authID
          : authID // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get userID {
    return $UserIDCopyWith<$Res>(_value.userID, (value) {
      return _then(_value.copyWith(userID: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserID userID,
      String authID,
      bool isAnonymous,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserIDCopyWith<$Res> get userID;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? authID = null,
    Object? isAnonymous = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$UserImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID,
      authID: null == authID
          ? _value.authID
          : authID // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserImpl with DiagnosticableTreeMixin implements _User {
  const _$UserImpl(
      {required this.userID,
      required this.authID,
      required this.isAnonymous,
      required this.createdAt,
      required this.updatedAt});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final UserID userID;
  @override
  final String authID;
  @override
  final bool isAnonymous;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(userID: $userID, authID: $authID, isAnonymous: $isAnonymous, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('authID', authID))
      ..add(DiagnosticsProperty('isAnonymous', isAnonymous))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.authID, authID) || other.authID == authID) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userID, authID, isAnonymous, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final UserID userID,
      required final String authID,
      required final bool isAnonymous,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  UserID get userID;
  @override
  String get authID;
  @override
  bool get isAnonymous;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
