import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import '/ui/pages/add_new_pet/feed_times/widget.dart';
import '/ui/pages/pet_list/pet_list_page.dart';
import '/ui/pages/root_page.dart';
import '/riverpod/add_new_pet/controller.dart';
import '/main.dart';
import '/strings.dart';
import '/ui/components/avatar_view.dart';

class InputNewPetInfoPage extends ConsumerWidget {
  const InputNewPetInfoPage({Key? key, required this.canBack})
      : super(key: key);

  static const pageName = "/input_new_pet_info_page";

  final bool canBack;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addNewPetController);
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.inputNewPetInfo),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        try {
                          final _picker = ImagePicker();
                          final pickedImage = await _picker.pickImage(
                              source: ImageSource.gallery);
                          if (pickedImage == null) {
                            return;
                          }
                          ref
                              .read(addNewPetController.notifier)
                              .updatePetAvatar(pickedImage);
                        } catch (e) {
                          if (kDebugMode) {
                            print(e);
                          }
                        }
                      },
                      child: AvatarView(
                        avatar: state.petAvatar == null
                            ? null
                            : FileImage(
                                File(state.petAvatar!.path),
                              ),
                        length: 120,
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: petIcon,
                        labelText: "ペットの名前を入力",
                      ),
                      validator: (_) => state.canCompleteNewPetSettings
                          ? null
                          : "ペットの名前は必須項目です",
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (name) {
                        ref
                            .read(addNewPetController.notifier)
                            .updatePetName(name);
                      },
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: SetupFeedTimesPage(canBack: canBack),
            )
          ],
        ),
      ),
      floatingActionButton: state.canCompleteNewPetSettings
          ? FloatingActionButton.extended(
              onPressed: () async {
                await ref
                    .read(addNewPetController.notifier)
                    .completeSettings();
                if (canBack) {
                  Navigator.of(context).pop();
                } else {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      PetListPage.pageName,
                          (route) => route.settings.name == RootPage.pageName);
                }
              },
              label: const Text("決定"))
          : null,
    );
  }
}
