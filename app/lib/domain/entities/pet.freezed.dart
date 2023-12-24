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

PetID _$PetIDFromJson(Map<String, dynamic> json) {
  return _PetID.fromJson(json);
}

/// @nodoc
mixin _$PetID {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetIDCopyWith<PetID> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetIDCopyWith<$Res> {
  factory $PetIDCopyWith(PetID value, $Res Function(PetID) then) =
      _$PetIDCopyWithImpl<$Res, PetID>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$PetIDCopyWithImpl<$Res, $Val extends PetID>
    implements $PetIDCopyWith<$Res> {
  _$PetIDCopyWithImpl(this._value, this._then);

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
abstract class _$$PetIDImplCopyWith<$Res> implements $PetIDCopyWith<$Res> {
  factory _$$PetIDImplCopyWith(
          _$PetIDImpl value, $Res Function(_$PetIDImpl) then) =
      __$$PetIDImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$PetIDImplCopyWithImpl<$Res>
    extends _$PetIDCopyWithImpl<$Res, _$PetIDImpl>
    implements _$$PetIDImplCopyWith<$Res> {
  __$$PetIDImplCopyWithImpl(
      _$PetIDImpl _value, $Res Function(_$PetIDImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$PetIDImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetIDImpl with DiagnosticableTreeMixin implements _PetID {
  const _$PetIDImpl(this.value);

  factory _$PetIDImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetIDImplFromJson(json);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PetID(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PetID'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetIDImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetIDImplCopyWith<_$PetIDImpl> get copyWith =>
      __$$PetIDImplCopyWithImpl<_$PetIDImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetIDImplToJson(
      this,
    );
  }
}

abstract class _PetID implements PetID {
  const factory _PetID(final String value) = _$PetIDImpl;

  factory _PetID.fromJson(Map<String, dynamic> json) = _$PetIDImpl.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$PetIDImplCopyWith<_$PetIDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pet _$PetFromJson(Map<String, dynamic> json) {
  return _Pet.fromJson(json);
}

/// @nodoc
mixin _$Pet {
  PetID get petID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatarURL => throw _privateConstructorUsedError;
  int get numberOfFeedTimesPerDay => throw _privateConstructorUsedError;
  List<UserID> get users => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetCopyWith<Pet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetCopyWith<$Res> {
  factory $PetCopyWith(Pet value, $Res Function(Pet) then) =
      _$PetCopyWithImpl<$Res, Pet>;
  @useResult
  $Res call(
      {PetID petID,
      String name,
      String? avatarURL,
      int numberOfFeedTimesPerDay,
      List<UserID> users,
      DateTime createdAt,
      DateTime updatedAt});

  $PetIDCopyWith<$Res> get petID;
}

/// @nodoc
class _$PetCopyWithImpl<$Res, $Val extends Pet> implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petID = null,
    Object? name = null,
    Object? avatarURL = freezed,
    Object? numberOfFeedTimesPerDay = null,
    Object? users = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      petID: null == petID
          ? _value.petID
          : petID // ignore: cast_nullable_to_non_nullable
              as PetID,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarURL: freezed == avatarURL
          ? _value.avatarURL
          : avatarURL // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfFeedTimesPerDay: null == numberOfFeedTimesPerDay
          ? _value.numberOfFeedTimesPerDay
          : numberOfFeedTimesPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserID>,
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
  $PetIDCopyWith<$Res> get petID {
    return $PetIDCopyWith<$Res>(_value.petID, (value) {
      return _then(_value.copyWith(petID: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PetImplCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$$PetImplCopyWith(_$PetImpl value, $Res Function(_$PetImpl) then) =
      __$$PetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PetID petID,
      String name,
      String? avatarURL,
      int numberOfFeedTimesPerDay,
      List<UserID> users,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $PetIDCopyWith<$Res> get petID;
}

/// @nodoc
class __$$PetImplCopyWithImpl<$Res> extends _$PetCopyWithImpl<$Res, _$PetImpl>
    implements _$$PetImplCopyWith<$Res> {
  __$$PetImplCopyWithImpl(_$PetImpl _value, $Res Function(_$PetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petID = null,
    Object? name = null,
    Object? avatarURL = freezed,
    Object? numberOfFeedTimesPerDay = null,
    Object? users = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PetImpl(
      petID: null == petID
          ? _value.petID
          : petID // ignore: cast_nullable_to_non_nullable
              as PetID,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarURL: freezed == avatarURL
          ? _value.avatarURL
          : avatarURL // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfFeedTimesPerDay: null == numberOfFeedTimesPerDay
          ? _value.numberOfFeedTimesPerDay
          : numberOfFeedTimesPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserID>,
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
class _$PetImpl extends _Pet with DiagnosticableTreeMixin {
  const _$PetImpl(
      {required this.petID,
      required this.name,
      this.avatarURL,
      required this.numberOfFeedTimesPerDay,
      required final List<UserID> users,
      required this.createdAt,
      required this.updatedAt})
      : _users = users,
        super._();

  factory _$PetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetImplFromJson(json);

  @override
  final PetID petID;
  @override
  final String name;
  @override
  final String? avatarURL;
  @override
  final int numberOfFeedTimesPerDay;
  final List<UserID> _users;
  @override
  List<UserID> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pet(petID: $petID, name: $name, avatarURL: $avatarURL, numberOfFeedTimesPerDay: $numberOfFeedTimesPerDay, users: $users, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pet'))
      ..add(DiagnosticsProperty('petID', petID))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatarURL', avatarURL))
      ..add(DiagnosticsProperty(
          'numberOfFeedTimesPerDay', numberOfFeedTimesPerDay))
      ..add(DiagnosticsProperty('users', users))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetImpl &&
            (identical(other.petID, petID) || other.petID == petID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarURL, avatarURL) ||
                other.avatarURL == avatarURL) &&
            (identical(
                    other.numberOfFeedTimesPerDay, numberOfFeedTimesPerDay) ||
                other.numberOfFeedTimesPerDay == numberOfFeedTimesPerDay) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      petID,
      name,
      avatarURL,
      numberOfFeedTimesPerDay,
      const DeepCollectionEquality().hash(_users),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetImplCopyWith<_$PetImpl> get copyWith =>
      __$$PetImplCopyWithImpl<_$PetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetImplToJson(
      this,
    );
  }
}

abstract class _Pet extends Pet {
  const factory _Pet(
      {required final PetID petID,
      required final String name,
      final String? avatarURL,
      required final int numberOfFeedTimesPerDay,
      required final List<UserID> users,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$PetImpl;
  const _Pet._() : super._();

  factory _Pet.fromJson(Map<String, dynamic> json) = _$PetImpl.fromJson;

  @override
  PetID get petID;
  @override
  String get name;
  @override
  String? get avatarURL;
  @override
  int get numberOfFeedTimesPerDay;
  @override
  List<UserID> get users;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PetImplCopyWith<_$PetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
