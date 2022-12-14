import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petfee/domain/repositories/auth/repository.dart';
import 'state.dart';

class AuthController extends StateNotifier<AuthState> {
  AuthController(
    AuthState state,
    this._authRepository,
  ) : super(state) {
    _authRepository.onChangedIsLoggedIn.listen((isLoggedIn) {
      state = state.copyWith(
        isLoggedIn: isLoggedIn,
      );
    });
  }

  final AuthRepository _authRepository;
}

final authController = StateNotifierProvider((ref) {
  const state = AuthState();
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthController(state, authRepository);
});