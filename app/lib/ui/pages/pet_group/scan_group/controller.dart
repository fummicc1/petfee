import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:petfee/domain/services/qr_service.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'state.dart';

part 'controller.g.dart';

@Riverpod(dependencies: [QrService])
class ScanPetGroupController extends _$ScanPetGroupController {
  final GlobalKey _globalKey = GlobalKey(debugLabel: "ScanPetGroupController");

  @override
  ScanPetGroupState build() {
    return const ScanPetGroupState(
      qrViewController: null,
      showPreview: false,
    );
  }

  Widget currentWidget(BuildContext context) {
    if (state.showPreview) {
      return buildPreview(context);
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FractionallySizedBox(
        heightFactor: 1.0,
        child: TextField(
          decoration: const InputDecoration(
            hintText: "共有リンクを入力",
          ),
          onSubmitted: (url) {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
            Future.delayed(
              const Duration(milliseconds: 300),
              () async {
                await _handleLink(url);
              },
            );
          },
        ),
      ),
    );
  }

  Widget actionButton() {
    if (state.showPreview) {
      return IconButton(
        onPressed: () {
          state = state.copyWith(showPreview: false);
        },
        icon: const Icon(Icons.text_fields),
      );
    }
    return IconButton(
      onPressed: () {
        state = state.copyWith(showPreview: true);
      },
      icon: const Icon(Icons.camera),
    );
  }

  Widget buildPreview(BuildContext context) {
    return QRView(
      key: _globalKey,
      onQRViewCreated: (controller) {
        _onQRViewCreated(context, controller);
      },
      overlay: QrScannerOverlayShape(
        borderColor: Colors.red,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: 320,
      ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(BuildContext context, QRViewController controller) {
    ref.watch(qrServiceProvider.notifier).update(qrViewController: controller);
    controller.scannedDataStream.listen((scanData) {
      if (scanData.format == BarcodeFormat.qrcode) {
        final code = scanData.code;
        if (code == null) {
          return;
        }
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
        try {
          Future.delayed(
            const Duration(milliseconds: 300),
            () async {
              await _handleLink(code);
            },
          );
        } catch (e) {
          if (kDebugMode) {
            print(e);
          }
        }
      }
    });
  }

  Future _handleLink(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('カメラを表示する権限が得られませんでした')),
      );
    }
  }
}
