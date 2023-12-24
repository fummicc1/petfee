import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'qr_service.g.dart';

@riverpod
class QrService extends _$QrService {
  @override
  QRViewController? build() {
    return null;
  }

  update({required QRViewController qrViewController}) {
    state = qrViewController;
  }
}
