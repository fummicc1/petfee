import 'package:petfee/domain/repositories/auth/repository.dart';
import 'package:petfee/domain/repositories/pet/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'state.dart';

part 'controller.g.dart';

@riverpod
class PetController extends _$PetController {
  @override
  PetState build() {
    ref
        .watch(authRepositoryProvider.notifier)
        .onChangedIsLoggedIn
        .where((isLoggedIn) => isLoggedIn)
        .listen((_) async {
      final myUserID = ref.watch(authRepositoryProvider)?.userID;
      if (myUserID != null) {
        ref
            .watch(petRepositoryProvider.notifier)
            .petListSnapshot(userID: myUserID)
            .listen((pets) {
          state = state.copyWith(pets: pets);
        });
      }
    });
    return const PetState(pets: []);
  }

  bool get hasPets => state.pets.isNotEmpty;
}
