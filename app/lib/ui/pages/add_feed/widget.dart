import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/domain/entities/pet.dart';
import 'package:petfee/riverpod/add_feed/controller.dart';
import 'package:petfee/riverpod/add_feed/state.dart';

class AddFeedPage extends ConsumerWidget {
  const AddFeedPage({
    Key? key,
    required final this.pet,
  }) : super(key: key);

  static const pageName = "/add_feed_page";

  final Pet pet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AddFeedState state = ref.watch(addFeedController(pet));

    return Scaffold(
      appBar: AppBar(
        title: Text("${state.pet.name}の餌やりを記録"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("餌やりをした日付"),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: state.feededAt,
                      firstDate: DateTime(1970, 1, 1),
                      lastDate: DateTime.now(),
                    );
                    if (date != null) {
                      ref
                          .read(addFeedController(pet).notifier)
                          .updateFeededat(date);
                    }
                  },
                  child: Text(
                      ref.read(addFeedController(pet).notifier).feededAtText()),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await ref.read(addFeedController(pet).notifier).commit();
          Navigator.of(context).pop();
        },
        label: const Text("保存する"),
        icon: const Icon(Icons.note_outlined),
      ),
    );
  }
}
