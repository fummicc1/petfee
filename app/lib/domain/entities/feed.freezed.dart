// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedID _$FeedIDFromJson(Map<String, dynamic> json) {
  return _FeedID.fromJson(json);
}

/// @nodoc
mixin _$FeedID {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedIDCopyWith<FeedID> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedIDCopyWith<$Res> {
  factory $FeedIDCopyWith(FeedID value, $Res Function(FeedID) then) =
      _$FeedIDCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$FeedIDCopyWithImpl<$Res> implements $FeedIDCopyWith<$Res> {
  _$FeedIDCopyWithImpl(this._value, this._then);

  final FeedID _value;
  // ignore: unused_field
  final $Res Function(FeedID) _then;

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
abstract class _$$_FeedIDCopyWith<$Res> implements $FeedIDCopyWith<$Res> {
  factory _$$_FeedIDCopyWith(_$_FeedID value, $Res Function(_$_FeedID) then) =
      __$$_FeedIDCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$_FeedIDCopyWithImpl<$Res> extends _$FeedIDCopyWithImpl<$Res>
    implements _$$_FeedIDCopyWith<$Res> {
  __$$_FeedIDCopyWithImpl(_$_FeedID _value, $Res Function(_$_FeedID) _then)
      : super(_value, (v) => _then(v as _$_FeedID));

  @override
  _$_FeedID get _value => super._value as _$_FeedID;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_FeedID(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedID with DiagnosticableTreeMixin implements _FeedID {
  const _$_FeedID(this.value);

  factory _$_FeedID.fromJson(Map<String, dynamic> json) =>
      _$$_FeedIDFromJson(json);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedID(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedID'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedID &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_FeedIDCopyWith<_$_FeedID> get copyWith =>
      __$$_FeedIDCopyWithImpl<_$_FeedID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedIDToJson(
      this,
    );
  }
}

abstract class _FeedID implements FeedID {
  const factory _FeedID(final String value) = _$_FeedID;

  factory _FeedID.fromJson(Map<String, dynamic> json) = _$_FeedID.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_FeedIDCopyWith<_$_FeedID> get copyWith =>
      throw _privateConstructorUsedError;
}

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return _Feed.fromJson(json);
}

/// @nodoc
mixin _$Feed {
  FeedID get feedID => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  PetID get petID => throw _privateConstructorUsedError;
  UserID get feederID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedCopyWith<Feed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) then) =
      _$FeedCopyWithImpl<$Res>;
  $Res call(
      {FeedID feedID,
      DateTime date,
      DateTime createdAt,
      DateTime updatedAt,
      PetID petID,
      UserID feederID});

  $FeedIDCopyWith<$Res> get feedID;
  $PetIDCopyWith<$Res> get petID;
  $UserIDCopyWith<$Res> get feederID;
}

/// @nodoc
class _$FeedCopyWithImpl<$Res> implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._value, this._then);

  final Feed _value;
  // ignore: unused_field
  final $Res Function(Feed) _then;

  @override
  $Res call({
    Object? feedID = freezed,
    Object? date = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? petID = freezed,
    Object? feederID = freezed,
  }) {
    return _then(_value.copyWith(
      feedID: feedID == freezed
          ? _value.feedID
          : feedID // ignore: cast_nullable_to_non_nullable
              as FeedID,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      petID: petID == freezed
          ? _value.petID
          : petID // ignore: cast_nullable_to_non_nullable
              as PetID,
      feederID: feederID == freezed
          ? _value.feederID
          : feederID // ignore: cast_nullable_to_non_nullable
              as UserID,
    ));
  }

  @override
  $FeedIDCopyWith<$Res> get feedID {
    return $FeedIDCopyWith<$Res>(_value.feedID, (value) {
      return _then(_value.copyWith(feedID: value));
    });
  }

  @override
  $PetIDCopyWith<$Res> get petID {
    return $PetIDCopyWith<$Res>(_value.petID, (value) {
      return _then(_value.copyWith(petID: value));
    });
  }

  @override
  $UserIDCopyWith<$Res> get feederID {
    return $UserIDCopyWith<$Res>(_value.feederID, (value) {
      return _then(_value.copyWith(feederID: value));
    });
  }
}

/// @nodoc
abstract class _$$_FeedCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory _$$_FeedCopyWith(_$_Feed value, $Res Function(_$_Feed) then) =
      __$$_FeedCopyWithImpl<$Res>;
  @override
  $Res call(
      {FeedID feedID,
      DateTime date,
      DateTime createdAt,
      DateTime updatedAt,
      PetID petID,
      UserID feederID});

  @override
  $FeedIDCopyWith<$Res> get feedID;
  @override
  $PetIDCopyWith<$Res> get petID;
  @override
  $UserIDCopyWith<$Res> get feederID;
}

/// @nodoc
class __$$_FeedCopyWithImpl<$Res> extends _$FeedCopyWithImpl<$Res>
    implements _$$_FeedCopyWith<$Res> {
  __$$_FeedCopyWithImpl(_$_Feed _value, $Res Function(_$_Feed) _then)
      : super(_value, (v) => _then(v as _$_Feed));

  @override
  _$_Feed get _value => super._value as _$_Feed;

  @override
  $Res call({
    Object? feedID = freezed,
    Object? date = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? petID = freezed,
    Object? feederID = freezed,
  }) {
    return _then(_$_Feed(
      feedID: feedID == freezed
          ? _value.feedID
          : feedID // ignore: cast_nullable_to_non_nullable
              as FeedID,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      petID: petID == freezed
          ? _value.petID
          : petID // ignore: cast_nullable_to_non_nullable
              as PetID,
      feederID: feederID == freezed
          ? _value.feederID
          : feederID // ignore: cast_nullable_to_non_nullable
              as UserID,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Feed with DiagnosticableTreeMixin implements _Feed {
  const _$_Feed(
      {required this.feedID,
      required this.date,
      required this.createdAt,
      required this.updatedAt,
      required this.petID,
      required this.feederID});

  factory _$_Feed.fromJson(Map<String, dynamic> json) => _$$_FeedFromJson(json);

  @override
  final FeedID feedID;
  @override
  final DateTime date;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final PetID petID;
  @override
  final UserID feederID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Feed(feedID: $feedID, date: $date, createdAt: $createdAt, updatedAt: $updatedAt, petID: $petID, feederID: $feederID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Feed'))
      ..add(DiagnosticsProperty('feedID', feedID))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('petID', petID))
      ..add(DiagnosticsProperty('feederID', feederID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feed &&
            const DeepCollectionEquality().equals(other.feedID, feedID) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.petID, petID) &&
            const DeepCollectionEquality().equals(other.feederID, feederID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feedID),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(petID),
      const DeepCollectionEquality().hash(feederID));

  @JsonKey(ignore: true)
  @override
  _$$_FeedCopyWith<_$_Feed> get copyWith =>
      __$$_FeedCopyWithImpl<_$_Feed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedToJson(
      this,
    );
  }
}

abstract class _Feed implements Feed {
  const factory _Feed(
      {required final FeedID feedID,
      required final DateTime date,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final PetID petID,
      required final UserID feederID}) = _$_Feed;

  factory _Feed.fromJson(Map<String, dynamic> json) = _$_Feed.fromJson;

  @override
  FeedID get feedID;
  @override
  DateTime get date;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  PetID get petID;
  @override
  UserID get feederID;
  @override
  @JsonKey(ignore: true)
  _$$_FeedCopyWith<_$_Feed> get copyWith => throw _privateConstructorUsedError;
}
