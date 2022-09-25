import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/domain/services/camera_service.dart';
import 'package:petfee/ui/pages/pet_group/scan_group/controller.dart';

class ScanPetGroupPage extends ConsumerWidget {
  const ScanPetGroupPage({Key? key}) : super(key: key);

  static const String pageName = "/scan_pet_group_page";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cameraService = ref.watch(cameraServiceProvider);
    final controller = ref.watch(
      scanPetGroupController(cameraService).notifier,
    );
    ref.watch(scanPetGroupController(cameraService));
    return Scaffold(
      appBar: AppBar(
        title: const Text("ペットをスキャン"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 320,
            child: controller.buildPreview(),
          )
        ],
      ),
    );
  }
}
