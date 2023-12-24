import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petfee/domain/entities/pet.dart';
import 'package:petfee/domain/entities/user.dart';
import 'package:petfee/domain/exceptions/auth.dart';
import 'package:petfee/domain/repositories/auth/repository.dart';
import 'package:petfee/domain/services/push_notification.dart';
import 'package:petfee/ui/pages/add_new_pet/state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/domain/repositories/pet/repository.dart';

part 'controller.g.dart';

@Riverpod(dependencies: [PetRepository])
class AddNewPetController extends _$AddNewPetController {
  @override
  AddNewPetState build() => AddNewPetState();

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
    final now = DateTime.now();

    final petModel = Pet(
      petID: const PetID(""),
      name: petName,
      numberOfFeedTimesPerDay: numberOfFeedPerDay,
      users: [],
      createdAt: now,
      updatedAt: now,
    );
    final File? file;
    if (petAvatar != null) {
      file = File(petAvatar.path);
    } else {
      file = null;
    }
    try {
      final userID =
          ref.watch(authRepositoryProvider)?.userID ?? const UserID("");
      final petID = await ref.watch(petRepositoryProvider.notifier).saveNewPet(
            userID: userID,
            entity: petModel,
            avatar: file,
          );
      await ref
          .watch(pushNotificationClientProvider.notifier)
          .subscribeTopic(petID);
    } on AuthException catch (e) {
      if (e == AuthException.notLoggedIn()) {
        await ref.watch(authRepositoryProvider.notifier).loginAnonymously();
        final userID =
            ref.watch(authRepositoryProvider)?.userID ?? const UserID("");
        final petID =
            await ref.watch(petRepositoryProvider.notifier).saveNewPet(
                  userID: userID,
                  entity: petModel,
                  avatar: file,
                );
        await ref
            .watch(pushNotificationClientProvider.notifier)
            .subscribeTopic(petID);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }

    state = state.copyWith(
      showLoading: false,
    );
  }

  Future skipSettings() async {
    await ref.watch(authRepositoryProvider.notifier).loginAnonymously();
  }

  clear() {
    state = state.copyWith(
      petName: "",
      petAvatar: null,
      numberOfFeedPerDay: 2,
    );
  }
}
