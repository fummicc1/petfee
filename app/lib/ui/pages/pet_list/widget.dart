import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/main.dart';
import 'controller.dart';
import 'state.dart';
import '/ui/components/pet_card.dart';
import '../add_new_pet/widget.dart';
import '/ui/pages/pet_detail/widget.dart';
import '/ui/pages/pet_group/add_pet_to_group_page.dart';

class PetListPage extends ConsumerWidget {
  static const pageName = "/my_pet_list";

  const PetListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PetState petState = ref.watch(petController);

    final pets = petState.pets;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ペット一覧"),
      ),
      drawer: Drawer(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("アクション"),
          ),
          body: ListView(
            children: [
              ListTile(
                title: const Text("グループでペットを共有する"),
                trailing: const Icon(Icons.group),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const AddPetToGroupPage();
                      },
                      settings: const RouteSettings(
                          name: AddPetToGroupPage.pageName)));
                },
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: pets.length,
            itemBuilder: (context, index) {
              final pet = pets[index];
              return PetCard(
                  pet: pet,
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      PetDetailPage.pageName,
                      arguments: pet,
                    );
                  });
            }),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 16,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const InputNewPetInfoPage(canBack: true);
              },
              fullscreenDialog: true,
            ),
          );
        },
        label: const Text("ペットを追加する"),
        icon: petIcon,
      ),
    );
  }
}
