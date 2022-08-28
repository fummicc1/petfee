import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/domain/entities/user.dart';
import 'package:petfee/domain/repositories/auth/repository.dart';
import 'package:petfee/domain/repositories/pet/repository.dart';
import 'package:petfee/riverpod/pet/state.dart';

class PetController extends StateNotifier<PetState> {
  final PetRepository _petRepository;
  final AuthRepository _authRepository;
  StreamSubscription? _subscription;

  PetController(
    PetState state,
    this._authRepository,
    this._petRepository,
  ) : super(state) {
    _authRepository.onChangedIsLoggedIn
        .where((isLoggedIn) => isLoggedIn)
        .listen((_) async {
      final myUserID = await _authRepository.userID;
      _subscription?.cancel();
      _startListening(myUserID);
    });
  }

  void _startListening(UserID listenUserID) {
    _subscription =
        _petRepository.petListSnapshot(userID: listenUserID).listen((pets) {
      state = state.copyWith(pets: pets);
    });
  }

  bool get hasPets => state.pets.isNotEmpty;

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

final petController = StateNotifierProvider<PetController, PetState>((ref) {
  const state = PetState();
  final auth = ref.watch(authRepositoryProvider);
  final pet = ref.watch(petRepositoryProvider);
  return PetController(
    state,
    auth,
    pet,
  );
});
