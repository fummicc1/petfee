import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:petfee/domain/services/auth_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exceptions/auth.dart';
import '/domain/entities/user.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true, dependencies: [authClient])
class AuthRepository extends _$AuthRepository {
  @override
  User? build() {
    return null;
  }

  Stream<bool> get onChangedIsLoggedIn {
    return ref
        .watch(authClientProvider)
        .authStateChanges()
        .map((event) => event != null);
  }

  String? get currentUID => ref.watch(authClientProvider).currentUser?.uid;

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

  bool get isLoggedIn => ref.watch(authClientProvider).currentUser?.uid != null;

  Future loginAnonymously() async {
    final authID = await ref.watch(authClientProvider).signInAnonymously().then(
          (credential) => credential.user?.uid,
        );
    if (authID == null) {
      throw AuthException.notLoggedIn();
    }
    final now = DateTime.now();
    final userDocument =
        FirebaseFirestore.instance.collection(User.collectionName).doc();
    final entity = User(
      authID: authID,
      userID: UserID(userDocument.id),
      isAnonymous: true,
      createdAt: now,
      updatedAt: now,
    );
    await userDocument.set(entity.toJson());
  }
}
