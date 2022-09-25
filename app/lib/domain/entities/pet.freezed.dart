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
      _$PetIDCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$PetIDCopyWithImpl<$Res> implements $PetIDCopyWith<$Res> {
  _$PetIDCopyWithImpl(this._value, this._then);

  final PetID _value;
  // ignore: unused_field
  final $Res Function(PetID) _then;

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
abstract class _$$_PetIDCopyWith<$Res> implements $PetIDCopyWith<$Res> {
  factory _$$_PetIDCopyWith(_$_PetID value, $Res Function(_$_PetID) then) =
      __$$_PetIDCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$_PetIDCopyWithImpl<$Res> extends _$PetIDCopyWithImpl<$Res>
    implements _$$_PetIDCopyWith<$Res> {
  __$$_PetIDCopyWithImpl(_$_PetID _value, $Res Function(_$_PetID) _then)
      : super(_value, (v) => _then(v as _$_PetID));

  @override
  _$_PetID get _value => super._value as _$_PetID;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_PetID(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetID with DiagnosticableTreeMixin implements _PetID {
  const _$_PetID(this.value);

  factory _$_PetID.fromJson(Map<String, dynamic> json) =>
      _$$_PetIDFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetID &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_PetIDCopyWith<_$_PetID> get copyWith =>
      __$$_PetIDCopyWithImpl<_$_PetID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetIDToJson(
      this,
    );
  }
}

abstract class _PetID implements PetID {
  const factory _PetID(final String value) = _$_PetID;

  factory _PetID.fromJson(Map<String, dynamic> json) = _$_PetID.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_PetIDCopyWith<_$_PetID> get copyWith =>
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
      _$PetCopyWithImpl<$Res>;
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
class _$PetCopyWithImpl<$Res> implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._value, this._then);

  final Pet _value;
  // ignore: unused_field
  final $Res Function(Pet) _then;

  @override
  $Res call({
    Object? petID = freezed,
    Object? name = freezed,
    Object? avatarURL = freezed,
    Object? numberOfFeedTimesPerDay = freezed,
    Object? users = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      petID: petID == freezed
          ? _value.petID
          : petID // ignore: cast_nullable_to_non_nullable
              as PetID,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarURL: avatarURL == freezed
          ? _value.avatarURL
          : avatarURL // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfFeedTimesPerDay: numberOfFeedTimesPerDay == freezed
          ? _value.numberOfFeedTimesPerDay
          : numberOfFeedTimesPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserID>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$_PetCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$$_PetCopyWith(_$_Pet value, $Res Function(_$_Pet) then) =
      __$$_PetCopyWithImpl<$Res>;
  @override
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
class __$$_PetCopyWithImpl<$Res> extends _$PetCopyWithImpl<$Res>
    implements _$$_PetCopyWith<$Res> {
  __$$_PetCopyWithImpl(_$_Pet _value, $Res Function(_$_Pet) _then)
      : super(_value, (v) => _then(v as _$_Pet));

  @override
  _$_Pet get _value => super._value as _$_Pet;

  @override
  $Res call({
    Object? petID = freezed,
    Object? name = freezed,
    Object? avatarURL = freezed,
    Object? numberOfFeedTimesPerDay = freezed,
    Object? users = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Pet(
      petID: petID == freezed
          ? _value.petID
          : petID // ignore: cast_nullable_to_non_nullable
              as PetID,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarURL: avatarURL == freezed
          ? _value.avatarURL
          : avatarURL // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfFeedTimesPerDay: numberOfFeedTimesPerDay == freezed
          ? _value.numberOfFeedTimesPerDay
          : numberOfFeedTimesPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      users: users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserID>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Pet extends _Pet with DiagnosticableTreeMixin {
  const _$_Pet(
      {required this.petID,
      required this.name,
      this.avatarURL,
      required this.numberOfFeedTimesPerDay,
      required final List<UserID> users,
      required this.createdAt,
      required this.updatedAt})
      : _users = users,
        super._();

  factory _$_Pet.fromJson(Map<String, dynamic> json) => _$$_PetFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pet &&
            const DeepCollectionEquality().equals(other.petID, petID) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.avatarURL, avatarURL) &&
            const DeepCollectionEquality().equals(
                other.numberOfFeedTimesPerDay, numberOfFeedTimesPerDay) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(petID),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatarURL),
      const DeepCollectionEquality().hash(numberOfFeedTimesPerDay),
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_PetCopyWith<_$_Pet> get copyWith =>
      __$$_PetCopyWithImpl<_$_Pet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetToJson(
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
      required final DateTime updatedAt}) = _$_Pet;
  const _Pet._() : super._();

  factory _Pet.fromJson(Map<String, dynamic> json) = _$_Pet.fromJson;

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
  _$$_PetCopyWith<_$_Pet> get copyWith => throw _privateConstructorUsedError;
}
