import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/domain/repositories/pet/repository.dart';
import 'package:petfee/ui/pages/pet_group/scan_group/controller.dart';

class ScanPetGroupPage extends ConsumerWidget {
  const ScanPetGroupPage({super.key});

  static const String pageName = "/scan_pet_group_page";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petRepository = ref.watch(petRepositoryProvider);
    final controller =
        ref.watch(scanPetGroupControllerProvider(petRepository).notifier);
    final state = ref.watch(scanPetGroupControllerProvider(petRepository));
    return Scaffold(
      appBar: AppBar(
        title: const Text("ペットをスキャン"),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            controller.currentWidget(context),
            Positioned(
              right: 24,
              bottom: 32,
              child: Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: controller.actionButton(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
