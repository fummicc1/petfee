import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/domain/entities/user.dart';
import '../../exceptions/auth.dart';

mixin AuthRepository {
  Stream<bool> get onChangedIsLoggedIn;

  String? get currentUID;

  Future<UserID> get userID;

  bool get isLoggedIn;

  Future loginAnonymously();
}

class AuthRepositoryImpl with AuthRepository {
  AuthRepositoryImpl(this._authClient);

  final FirebaseAuth _authClient;

  static final AuthRepositoryImpl shared =
      AuthRepositoryImpl(FirebaseAuth.instance);

  @override
  late Stream<bool> onChangedIsLoggedIn = _authClient.authStateChanges().map(
        (user) => user != null,
      );

  @override
  String? get currentUID => _authClient.currentUser?.uid;

  @override
  Future<UserID> get userID async {
    if (currentUID == null) {
      throw AuthException.notLoggedIn();
    }
    Query query = FirebaseFirestore.instance
        .collection(User.collectionName)
        .where(
          "authID",
          isEqualTo: currentUID,
        )
        .withConverter<User>(
          fromFirestore: (snapshot, _) => User.fromJson(
            snapshot.data() ?? {},
          ),
          toFirestore: (user, _) => user.toJson(),
        );

    final QueryDocumentSnapshot<User> entity = await query.get().then(
          (value) => value.docs.cast().first,
        );
    return entity.data().userID;
  }

  @override
  bool get isLoggedIn => _authClient.currentUser?.uid != null;

  @override
  Future loginAnonymously() async {
    final authID = await _authClient.signInAnonymously().then(
          (credential) => credential.user?.uid,
        );
    if (authID == null) {
      throw AuthException.notLoggedIn();
    }
    final userDocument =
        FirebaseFirestore.instance.collection(User.collectionName).doc();
    final entity = User(
      authID: authID,
      userID: UserID(userDocument.id),
      isAnonymous: true,
    );
    await userDocument.set(entity.toJson());
  }
}

final authRepositoryProvider = Provider((ref) => AuthRepositoryImpl.shared);
