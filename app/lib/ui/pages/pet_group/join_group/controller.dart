import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/domain/exceptions/pet.dart';
import 'state.dart';
import '/domain/entities/pet.dart';
import '/domain/repositories/auth/repository.dart';
import '/domain/repositories/pet/repository.dart';
import '/domain/services/push_notification.dart';

class JoinGroupController extends StateNotifier<JoinGroupState> {
  final PushNotificationClient _pushNotificationClient;
  final PetRepository _petRepository;
  final AuthRepository _authRepository;

  JoinGroupController(
    JoinGroupState state,
    this._authRepository,
    this._petRepository,
    this._pushNotificationClient,
  ) : super(state);

  Future joinGroup() async {
    Pet pet = state.pet;
    try {
      final myUserID = await _authRepository.userID;
      final currentJoinedUsers = pet.users;
      if (currentJoinedUsers.contains(myUserID)) {
        throw PetException.alreadyJoined();
      }

      pet = pet.copyWith(
        users: pet.users + [myUserID]
      );

      await _petRepository.updatePet(pet);
      final petID = pet.petID;
      await _pushNotificationClient.subscribeTopic(petID.value);
    } catch (e) {
      if (e == PetException.alreadyJoined()) {
        final errorMessage = "既に${pet.name}の管理に携わっています";
        state = state.copyWith(errorMessage: errorMessage);
      }
      rethrow;
    }
  }
}

final joinGroupController =
    StateNotifierProvider.family<JoinGroupController, JoinGroupState, Pet>(
        (ref, pet) {
  final state = JoinGroupState(pet: pet);
  final authRepository = ref.watch(authRepositoryProvider);
  final petRepository = ref.watch(petRepositoryProvider);
  final pushNotificationClient = ref.watch(pushNotificationProvider);
  return JoinGroupController(
    state,
    authRepository,
    petRepository,
    pushNotificationClient,
  );
});
