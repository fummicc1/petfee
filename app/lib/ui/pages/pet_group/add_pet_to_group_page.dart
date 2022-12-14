import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/ui/pages/pet_group/scan_group/widget.dart';
import 'package:petfee/ui/pages/pet_list/controller.dart';
import 'package:petfee/ui/components/pet_card.dart';
import 'package:petfee/ui/pages/pet_group/share_pet_page.dart';

import '../pet_list/state.dart';

class AddPetToGroupPage extends ConsumerWidget {
  const AddPetToGroupPage({Key? key}) : super(key: key);

  static const pageName = "/add_pet_to_group_page";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PetState petState = ref.watch(petController);

    return Scaffold(
      appBar: AppBar(
        title: const Text("シェアするペットを選ぶ"),
      ),
      body: ListView.builder(
        itemCount: petState.pets.length,
        itemBuilder: (context, index) {
          final pet = petState.pets[index];
          return PetCard(
            pet: pet,
            onTap: () async {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SharePetPage(pet: pet);
                  },
                  settings: const RouteSettings(name: SharePetPage.pageName),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed(ScanPetGroupPage.pageName);
        },
        label: const Text("グループに入る"),
      ),
    );
  }
}
