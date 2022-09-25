import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class CameraService {
  bool get noAvailableCamera;

  bool get isInitialized;

  bool get hasController;

  VoidCallback get onUpdate;

  Future initialize();

  Future dispose();

  Future refreshController();

  setOnUpdate(VoidCallback onUpdate);
}

class CameraServiceImpl with CameraService {
  CameraController? _controller;
  List<CameraDescription> _cameras = [];

  @override
  bool get noAvailableCamera => _cameras.isEmpty;
  @override
  bool isInitialized = false;

  @override
  VoidCallback onUpdate = () {};

  @override
  bool get hasController => _controller != null;

  @override
  Future initialize() async {
    _cameras = await availableCameras();
    isInitialized = true;
    if (_cameras.isEmpty) {
      return;
    }
    _controller?.dispose();
    final controller = CameraController(
      _cameras[0],
      ResolutionPreset.high,
    );
    _controller = controller;
    await _setupListener(controller);
  }

  @override
  Future refreshController() async {
    final controller = _controller;
    if (controller == null) {
      return;
    }
    final currentDescription = controller.description;
    final newController = CameraController(
      currentDescription,
      ResolutionPreset.high,
    );
    _controller = newController;
    await _setupListener(controller);
  }

  Future _setupListener(CameraController controller) async {
    controller.addListener(() {
      onUpdate();
    });
  }

  @override
  Future dispose() async {
    await _controller?.dispose();
  }

  @override
  setOnUpdate(VoidCallback onUpdate) {
    this.onUpdate = onUpdate;
  }
}

final cameraServiceProvider = Provider<CameraService>(
  (ref) => CameraServiceImpl(),
);
