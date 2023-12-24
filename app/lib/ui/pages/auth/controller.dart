import 'package:petfee/domain/repositories/auth/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'state.dart';

part 'controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  AuthState build() {
    ref
        .watch(authRepositoryProvider.notifier)
        .onChangedIsLoggedIn
        .listen((isLoggedIn) {
      state = state.copyWith(
        isLoggedIn: isLoggedIn,
      );
    });
    return const AuthState();
  }
}
