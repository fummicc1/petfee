import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/domain/services/camera_service.dart';

import 'state.dart';

class ScanPetGroupController extends StateNotifier<ScanPetGroupState> {
  final CameraService cameraService;

  ScanPetGroupController(
    super.state, {
    required this.cameraService,
  }) {
    cameraService.setOnUpdate(() {
      final frame = state.refreshFrame + 1;
      state = state.copyWith(refreshFrame: frame % pow(10, 6));
    });
  }

  Widget buildPreview() {
    if (!cameraService.hasController) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return CameraPreview(cameraService.requiredController);
  }
}

final scanPetGroupController = StateNotifierProvider.family<
    ScanPetGroupController, ScanPetGroupState, CameraService>(
  (ref, cameraService) => ScanPetGroupController(
    const ScanPetGroupState(),
    cameraService: cameraService,
  ),
);
