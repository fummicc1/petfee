import 'package:petfee/domain/exceptions/pet.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/domain/entities/pet.dart';
import '/domain/repositories/auth/repository.dart';
import '/domain/repositories/pet/repository.dart';
import '/domain/services/push_notification.dart';
import 'state.dart';

part 'controller.g.dart';

@Riverpod(dependencies: [
  PushNotificationClient,
  AuthRepository,
  PetRepository,
])
class JoinGroupController extends _$JoinGroupController {
  @override
  JoinGroupState build({required Pet pet}) => JoinGroupState(pet: pet);

  Future joinGroup() async {
    Pet pet = state.pet;
    try {
      final myUserID = ref.watch(authRepositoryProvider)?.userID;
      if (myUserID == null) return;
      final currentJoinedUsers = pet.users;
      if (currentJoinedUsers.contains(myUserID)) {
        throw PetException.alreadyJoined();
      }

      pet = pet.copyWith(users: pet.users + [myUserID]);

      await ref.watch(petRepositoryProvider.notifier).update(
            pet: pet,
          );
      final petID = pet.petID;
      await ref
          .watch(pushNotificationClientProvider.notifier)
          .subscribeTopic(petID.value);
    } catch (e) {
      if (e == PetException.alreadyJoined()) {
        final errorMessage = "既に${pet.name}の管理に携わっています";
        state = state.copyWith(errorMessage: errorMessage);
      }
      rethrow;
    }
  }
}
