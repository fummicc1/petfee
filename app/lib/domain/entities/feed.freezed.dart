// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$FeedIDCopyWithImpl<$Res, FeedID>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$FeedIDCopyWithImpl<$Res, $Val extends FeedID>
    implements $FeedIDCopyWith<$Res> {
  _$FeedIDCopyWithImpl(this._value, this._then);

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
abstract class _$$FeedIDImplCopyWith<$Res> implements $FeedIDCopyWith<$Res> {
  factory _$$FeedIDImplCopyWith(
          _$FeedIDImpl value, $Res Function(_$FeedIDImpl) then) =
      __$$FeedIDImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$FeedIDImplCopyWithImpl<$Res>
    extends _$FeedIDCopyWithImpl<$Res, _$FeedIDImpl>
    implements _$$FeedIDImplCopyWith<$Res> {
  __$$FeedIDImplCopyWithImpl(
      _$FeedIDImpl _value, $Res Function(_$FeedIDImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$FeedIDImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedIDImpl with DiagnosticableTreeMixin implements _FeedID {
  const _$FeedIDImpl(this.value);

  factory _$FeedIDImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedIDImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedIDImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedIDImplCopyWith<_$FeedIDImpl> get copyWith =>
      __$$FeedIDImplCopyWithImpl<_$FeedIDImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedIDImplToJson(
      this,
    );
  }
}

abstract class _FeedID implements FeedID {
  const factory _FeedID(final String value) = _$FeedIDImpl;

  factory _FeedID.fromJson(Map<String, dynamic> json) = _$FeedIDImpl.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$FeedIDImplCopyWith<_$FeedIDImpl> get copyWith =>
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
  String? get memo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedCopyWith<Feed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) then) =
      _$FeedCopyWithImpl<$Res, Feed>;
  @useResult
  $Res call(
      {FeedID feedID,
      DateTime date,
      DateTime createdAt,
      DateTime updatedAt,
      PetID petID,
      UserID feederID,
      String? memo});

  $FeedIDCopyWith<$Res> get feedID;
  $PetIDCopyWith<$Res> get petID;
  $UserIDCopyWith<$Res> get feederID;
}

/// @nodoc
class _$FeedCopyWithImpl<$Res, $Val extends Feed>
    implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedID = null,
    Object? date = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? petID = null,
    Object? feederID = null,
    Object? memo = freezed,
  }) {
    return _then(_value.copyWith(
      feedID: null == feedID
          ? _value.feedID
          : feedID // ignore: cast_nullable_to_non_nullable
              as FeedID,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      petID: null == petID
          ? _value.petID
          : petID // ignore: cast_nullable_to_non_nullable
              as PetID,
      feederID: null == feederID
          ? _value.feederID
          : feederID // ignore: cast_nullable_to_non_nullable
              as UserID,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedIDCopyWith<$Res> get feedID {
    return $FeedIDCopyWith<$Res>(_value.feedID, (value) {
      return _then(_value.copyWith(feedID: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PetIDCopyWith<$Res> get petID {
    return $PetIDCopyWith<$Res>(_value.petID, (value) {
      return _then(_value.copyWith(petID: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get feederID {
    return $UserIDCopyWith<$Res>(_value.feederID, (value) {
      return _then(_value.copyWith(feederID: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedImplCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory _$$FeedImplCopyWith(
          _$FeedImpl value, $Res Function(_$FeedImpl) then) =
      __$$FeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FeedID feedID,
      DateTime date,
      DateTime createdAt,
      DateTime updatedAt,
      PetID petID,
      UserID feederID,
      String? memo});

  @override
  $FeedIDCopyWith<$Res> get feedID;
  @override
  $PetIDCopyWith<$Res> get petID;
  @override
  $UserIDCopyWith<$Res> get feederID;
}

/// @nodoc
class __$$FeedImplCopyWithImpl<$Res>
    extends _$FeedCopyWithImpl<$Res, _$FeedImpl>
    implements _$$FeedImplCopyWith<$Res> {
  __$$FeedImplCopyWithImpl(_$FeedImpl _value, $Res Function(_$FeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedID = null,
    Object? date = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? petID = null,
    Object? feederID = null,
    Object? memo = freezed,
  }) {
    return _then(_$FeedImpl(
      feedID: null == feedID
          ? _value.feedID
          : feedID // ignore: cast_nullable_to_non_nullable
              as FeedID,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      petID: null == petID
          ? _value.petID
          : petID // ignore: cast_nullable_to_non_nullable
              as PetID,
      feederID: null == feederID
          ? _value.feederID
          : feederID // ignore: cast_nullable_to_non_nullable
              as UserID,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FeedImpl with DiagnosticableTreeMixin implements _Feed {
  const _$FeedImpl(
      {required this.feedID,
      required this.date,
      required this.createdAt,
      required this.updatedAt,
      required this.petID,
      required this.feederID,
      this.memo});

  factory _$FeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedImplFromJson(json);

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
  final String? memo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Feed(feedID: $feedID, date: $date, createdAt: $createdAt, updatedAt: $updatedAt, petID: $petID, feederID: $feederID, memo: $memo)';
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
      ..add(DiagnosticsProperty('feederID', feederID))
      ..add(DiagnosticsProperty('memo', memo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedImpl &&
            (identical(other.feedID, feedID) || other.feedID == feedID) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.petID, petID) || other.petID == petID) &&
            (identical(other.feederID, feederID) ||
                other.feederID == feederID) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, feedID, date, createdAt, updatedAt, petID, feederID, memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      __$$FeedImplCopyWithImpl<_$FeedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedImplToJson(
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
      required final UserID feederID,
      final String? memo}) = _$FeedImpl;

  factory _Feed.fromJson(Map<String, dynamic> json) = _$FeedImpl.fromJson;

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
  String? get memo;
  @override
  @JsonKey(ignore: true)
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
