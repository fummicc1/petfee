import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

part 'state.freezed.dart';

@freezed
class ScanPetGroupState with _$ScanPetGroupState {
  const factory ScanPetGroupState({
    @Default(true) bool showPreview,
    QRViewController? qrViewController,
    @Default(false) bool isLoadingQRCode,
  }) = _ScanPetGroupState;
}
