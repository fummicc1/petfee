import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/riverpod/add_new_pet/controller.dart';

class SetupFeedTimesPage extends ConsumerWidget {
  const SetupFeedTimesPage({
    Key? key,
    required this.canBack,
  }) : super(key: key);

  static const pageName = "/setup_feed_times_page";

  final bool canBack;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Stack(
            children: _stackChildren(context, ref),
          ),
        ),
      ),
    );
  }

  List<Widget> _stackChildren(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addNewPetController);
    final List<Widget> list = [
      Text(
        "餌の回数",
        style: Theme.of(context).textTheme.headline6,
      ),
      Center(
        child: Row(
          children: [
            const Spacer(),
            const Flexible(child: Text("一日あたり")),
            Flexible(
              child: DropdownButton(
                value: state.numberOfFeedPerDay,
                icon: const Icon(Icons.arrow_drop_down),
                borderRadius: BorderRadius.circular(8),
                dropdownColor: Theme.of(context).primaryColor,
                iconSize: 32,
                elevation: 8,
                onChanged: (number) {
                  number = number as int?;
                  if (number == null) return;
                  ref
                      .read(addNewPetController.notifier)
                      .updateNumberOfFeedPerDay(number);
                },
                items: const [
                  DropdownMenuItem(
                    child: Text("1回"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("2回"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text("3回"),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text("4回"),
                    value: 4,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ];
    if (state.showLoading) {
      list.add(const Center(child: CircularProgressIndicator()));
    }
    return list;
  }
}
