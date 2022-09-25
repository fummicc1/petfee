import 'package:flutter/material.dart';

class ScanPetGroupPage extends StatelessWidget {
  const ScanPetGroupPage({Key? key}) : super(key: key);

  static const String pageName = "/scan_pet_group_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ペットをスキャン"),
      ),
      body: Column(
        children: [
        ],
      ),
    );
  }
}
