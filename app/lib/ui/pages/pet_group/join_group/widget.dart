import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/domain/entities/pet.dart';
import 'controller.dart';
import 'state.dart';
import '/ui/components/avatar_view.dart';

class JoinPetGroupPage extends ConsumerWidget {
  const JoinPetGroupPage({
    Key? key,
    required this.pet,
  }) : super(key: key);

  static const pageName = "/join_pet_group_page";

  final Pet pet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final JoinGroupState state = ref.watch(joinGroupController(pet));

    final errorMessage = state.errorMessage;

    if (errorMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                title: Text(errorMessage),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(0);
                      },
                      child: const Text(
                        "閉じる",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              );
            });
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("${state.pet.name}の管理に加わる"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                state.pet.avatarURL == null
                    ? const SizedBox.shrink()
                    : Center(
                        child: AvatarView(
                            avatar: NetworkImage(state.pet.avatarURL!),
                            length: 200),
                      ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ElevatedButton.icon(
                        onPressed: () async {
                          try {
                            await ref
                                .read(joinGroupController(pet).notifier)
                                .joinGroup();
                            // ignore: use_build_context_synchronously
                            Navigator.of(context).pop();
                          } catch (e) {
                            if (kDebugMode) {
                              print(e);
                            }
                          }
                        },
                        icon: const Icon(Icons.group_add),
                        label: const Text("参加する")),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
