import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_client.g.dart';

@Riverpod(keepAlive: true)
FirebaseAuth authClient(Ref ref) {
  return FirebaseAuth.instance;
}
