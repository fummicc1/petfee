// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScanPetGroupState {
  bool get showPreview => throw _privateConstructorUsedError;
  QRViewController? get qrViewController => throw _privateConstructorUsedError;
  bool get isLoadingQRCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanPetGroupStateCopyWith<ScanPetGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanPetGroupStateCopyWith<$Res> {
  factory $ScanPetGroupStateCopyWith(
          ScanPetGroupState value, $Res Function(ScanPetGroupState) then) =
      _$ScanPetGroupStateCopyWithImpl<$Res, ScanPetGroupState>;
  @useResult
  $Res call(
      {bool showPreview,
      QRViewController? qrViewController,
      bool isLoadingQRCode});
}

/// @nodoc
class _$ScanPetGroupStateCopyWithImpl<$Res, $Val extends ScanPetGroupState>
    implements $ScanPetGroupStateCopyWith<$Res> {
  _$ScanPetGroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showPreview = null,
    Object? qrViewController = freezed,
    Object? isLoadingQRCode = null,
  }) {
    return _then(_value.copyWith(
      showPreview: null == showPreview
          ? _value.showPreview
          : showPreview // ignore: cast_nullable_to_non_nullable
              as bool,
      qrViewController: freezed == qrViewController
          ? _value.qrViewController
          : qrViewController // ignore: cast_nullable_to_non_nullable
              as QRViewController?,
      isLoadingQRCode: null == isLoadingQRCode
          ? _value.isLoadingQRCode
          : isLoadingQRCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScanPetGroupStateImplCopyWith<$Res>
    implements $ScanPetGroupStateCopyWith<$Res> {
  factory _$$ScanPetGroupStateImplCopyWith(_$ScanPetGroupStateImpl value,
          $Res Function(_$ScanPetGroupStateImpl) then) =
      __$$ScanPetGroupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showPreview,
      QRViewController? qrViewController,
      bool isLoadingQRCode});
}

/// @nodoc
class __$$ScanPetGroupStateImplCopyWithImpl<$Res>
    extends _$ScanPetGroupStateCopyWithImpl<$Res, _$ScanPetGroupStateImpl>
    implements _$$ScanPetGroupStateImplCopyWith<$Res> {
  __$$ScanPetGroupStateImplCopyWithImpl(_$ScanPetGroupStateImpl _value,
      $Res Function(_$ScanPetGroupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showPreview = null,
    Object? qrViewController = freezed,
    Object? isLoadingQRCode = null,
  }) {
    return _then(_$ScanPetGroupStateImpl(
      showPreview: null == showPreview
          ? _value.showPreview
          : showPreview // ignore: cast_nullable_to_non_nullable
              as bool,
      qrViewController: freezed == qrViewController
          ? _value.qrViewController
          : qrViewController // ignore: cast_nullable_to_non_nullable
              as QRViewController?,
      isLoadingQRCode: null == isLoadingQRCode
          ? _value.isLoadingQRCode
          : isLoadingQRCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ScanPetGroupStateImpl implements _ScanPetGroupState {
  const _$ScanPetGroupStateImpl(
      {this.showPreview = true,
      this.qrViewController,
      this.isLoadingQRCode = false});

  @override
  @JsonKey()
  final bool showPreview;
  @override
  final QRViewController? qrViewController;
  @override
  @JsonKey()
  final bool isLoadingQRCode;

  @override
  String toString() {
    return 'ScanPetGroupState(showPreview: $showPreview, qrViewController: $qrViewController, isLoadingQRCode: $isLoadingQRCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanPetGroupStateImpl &&
            (identical(other.showPreview, showPreview) ||
                other.showPreview == showPreview) &&
            (identical(other.qrViewController, qrViewController) ||
                other.qrViewController == qrViewController) &&
            (identical(other.isLoadingQRCode, isLoadingQRCode) ||
                other.isLoadingQRCode == isLoadingQRCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, showPreview, qrViewController, isLoadingQRCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanPetGroupStateImplCopyWith<_$ScanPetGroupStateImpl> get copyWith =>
      __$$ScanPetGroupStateImplCopyWithImpl<_$ScanPetGroupStateImpl>(
          this, _$identity);
}

abstract class _ScanPetGroupState implements ScanPetGroupState {
  const factory _ScanPetGroupState(
      {final bool showPreview,
      final QRViewController? qrViewController,
      final bool isLoadingQRCode}) = _$ScanPetGroupStateImpl;

  @override
  bool get showPreview;
  @override
  QRViewController? get qrViewController;
  @override
  bool get isLoadingQRCode;
  @override
  @JsonKey(ignore: true)
  _$$ScanPetGroupStateImplCopyWith<_$ScanPetGroupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
