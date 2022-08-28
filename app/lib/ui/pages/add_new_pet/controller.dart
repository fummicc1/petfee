import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petfee/domain/entities/pet.dart';
import 'package:petfee/domain/exceptions/auth.dart';
import 'package:petfee/ui/pages/add_new_pet/state.dart';

import '/domain/repositories/auth/repository.dart';
import '/domain/repositories/pet/repository.dart';
import '/domain/services/push_notification.dart';

class AddNewPetController extends StateNotifier<AddNewPetState> {
  final AuthRepository _authRepository;
  final PetRepository _petRepository;
  final PushNotificationClient _pushNotificationClient;

  AddNewPetController(
    AddNewPetState state,
    this._authRepository,
    this._petRepository,
    this._pushNotificationClient,
  ) : super(state);

  updatePetName(String newValue) {
    state = state.copyWith(
      petName: newValue,
      canCompleteNewPetSettings: newValue.isNotEmpty,
    );
  }

  updatePetAvatar(XFile? newValue) {
    state = state.copyWith(
      petAvatar: newValue,
    );
  }

  updateNumberOfFeedPerDay(int newValue) {
    state = state.copyWith(
      numberOfFeedPerDay: newValue,
    );
  }

  Future completeSettings() async {
    if (!state.canCompleteNewPetSettings) {
      throw UnsupportedError("");
    }

    state = state.copyWith(
      showLoading: true,
    );

    final petAvatar = state.petAvatar;
    final petName = state.petName;
    final numberOfFeedPerDay = state.numberOfFeedPerDay;

    final petModel = Pet(
      petID: const PetID(""),
      name: petName,
      numberOfFeedTimesPerDay: numberOfFeedPerDay,
      users: [],
    );
    final File? file;
    if (petAvatar != null) {
      file = File(petAvatar.path);
    } else {
      file = null;
    }
    try {
      final userID = await _authRepository.userID;
      final petID = await _petRepository.saveNewPet(
        userID: userID,
        entity: petModel,
        avatar: file,
      );
      await _pushNotificationClient.subscribeTopic(petID);
    } on AuthException catch (e) {
      if (e == AuthException.notLoggedIn()) {
        await _authRepository.loginAnonymously();
        final userID = await _authRepository.userID;
        final petID = await _petRepository.saveNewPet(
          userID: userID,
          entity: petModel,
          avatar: file,
        );
        await _pushNotificationClient.subscribeTopic(petID);
      }
    }  catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }

    state = state.copyWith(
      showLoading: false,
    );
  }

  Future skipSettings() async {
    await _authRepository.loginAnonymously();
  }

  clear() {
    state = state.copyWith(
      petName: "",
      petAvatar: null,
      numberOfFeedPerDay: 2,
    );
  }
}

final addNewPetController =
    StateNotifierProvider<AddNewPetController, AddNewPetState>((ref) {
  final state = AddNewPetState();
  final auth = ref.watch(authRepositoryProvider);
  final pet = ref.watch(petRepositoryProvider);
  final push = ref.watch(pushNotificationProvider);
  return AddNewPetController(
    state,
    auth,
    pet,
    push,
  );
});
