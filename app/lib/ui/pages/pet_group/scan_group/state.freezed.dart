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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScanPetGroupState {
  double get refreshFrame => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanPetGroupStateCopyWith<ScanPetGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanPetGroupStateCopyWith<$Res> {
  factory $ScanPetGroupStateCopyWith(
          ScanPetGroupState value, $Res Function(ScanPetGroupState) then) =
      _$ScanPetGroupStateCopyWithImpl<$Res>;
  $Res call({double refreshFrame});
}

/// @nodoc
class _$ScanPetGroupStateCopyWithImpl<$Res>
    implements $ScanPetGroupStateCopyWith<$Res> {
  _$ScanPetGroupStateCopyWithImpl(this._value, this._then);

  final ScanPetGroupState _value;
  // ignore: unused_field
  final $Res Function(ScanPetGroupState) _then;

  @override
  $Res call({
    Object? refreshFrame = freezed,
  }) {
    return _then(_value.copyWith(
      refreshFrame: refreshFrame == freezed
          ? _value.refreshFrame
          : refreshFrame // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_ScanPetGroupStateCopyWith<$Res>
    implements $ScanPetGroupStateCopyWith<$Res> {
  factory _$$_ScanPetGroupStateCopyWith(_$_ScanPetGroupState value,
          $Res Function(_$_ScanPetGroupState) then) =
      __$$_ScanPetGroupStateCopyWithImpl<$Res>;
  @override
  $Res call({double refreshFrame});
}

/// @nodoc
class __$$_ScanPetGroupStateCopyWithImpl<$Res>
    extends _$ScanPetGroupStateCopyWithImpl<$Res>
    implements _$$_ScanPetGroupStateCopyWith<$Res> {
  __$$_ScanPetGroupStateCopyWithImpl(
      _$_ScanPetGroupState _value, $Res Function(_$_ScanPetGroupState) _then)
      : super(_value, (v) => _then(v as _$_ScanPetGroupState));

  @override
  _$_ScanPetGroupState get _value => super._value as _$_ScanPetGroupState;

  @override
  $Res call({
    Object? refreshFrame = freezed,
  }) {
    return _then(_$_ScanPetGroupState(
      refreshFrame: refreshFrame == freezed
          ? _value.refreshFrame
          : refreshFrame // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ScanPetGroupState implements _ScanPetGroupState {
  const _$_ScanPetGroupState({this.refreshFrame = 0});

  @override
  @JsonKey()
  final double refreshFrame;

  @override
  String toString() {
    return 'ScanPetGroupState(refreshFrame: $refreshFrame)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScanPetGroupState &&
            const DeepCollectionEquality()
                .equals(other.refreshFrame, refreshFrame));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(refreshFrame));

  @JsonKey(ignore: true)
  @override
  _$$_ScanPetGroupStateCopyWith<_$_ScanPetGroupState> get copyWith =>
      __$$_ScanPetGroupStateCopyWithImpl<_$_ScanPetGroupState>(
          this, _$identity);
}

abstract class _ScanPetGroupState implements ScanPetGroupState {
  const factory _ScanPetGroupState({final double refreshFrame}) =
      _$_ScanPetGroupState;

  @override
  double get refreshFrame;
  @override
  @JsonKey(ignore: true)
  _$$_ScanPetGroupStateCopyWith<_$_ScanPetGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}
