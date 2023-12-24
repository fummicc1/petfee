import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/ui/pages/add_feed/controller.dart';
import 'package:petfee/ui/pages/add_feed/state.dart';

class AddFeedPage extends ConsumerWidget {
  const AddFeedPage({
    Key? key,
    required this.input,
  }) : super(key: key);

  static const pageName = "/add_feed_page";

  final AddFeedControllerInput input;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AddFeedState state = ref.watch(addFeedController(input));

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
                      initialDate: state.fedAt,
                      firstDate: DateTime(1970, 1, 1),
                      lastDate: DateTime.now(),
                    );
                    if (date != null) {
                      ref
                          .read(addFeedController(input).notifier)
                          .updateFedAt(date);
                    }
                  },
                  child: Text(ref
                      .read(addFeedController(input).notifier)
                      .getFedAtText()),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await ref.read(addFeedController(input).notifier).commit();
          // ignore: use_build_context_synchronously
          Navigator.of(context).pop();
        },
        label: const Text("保存する"),
        icon: const Icon(Icons.note_outlined),
      ),
    );
  }
}
