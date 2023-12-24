import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:petfee/domain/repositories/current-pet/repository.dart';
import 'package:petfee/domain/services/storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/domain/entities/feed.dart';
import '/domain/entities/pet.dart';
import '/domain/entities/user.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true, dependencies: [storage, CurrentPetRepository])
class FeedRepository extends _$FeedRepository {
  @override
  List<Feed> build(Pet currentPet) {
    snapshot();
    return [];
  }

  snapshot() {
    final firestore = ref.watch(storageProvider);
    Query query = firestore
        .collection(Feed.collectionName)
        .withConverter<Feed>(
          fromFirestore: (snapshot, _) => Feed.fromJson(snapshot.data() ?? {}),
          toFirestore: (feed, _) => feed.toJson(),
        )
        .where(
          "petID",
          isEqualTo: currentPet.petID.toJson(),
        );
    final Stream<List<Feed>> response = query.snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => doc.data()).cast<Feed>().toList());
    response.listen((event) {
      state = event;
    });
  }

  Future<List<Feed>> fetch() async {
    final firestore = ref.watch(storageProvider);
    Query query = firestore
        .collection(Feed.collectionName)
        .withConverter<Feed>(
          fromFirestore: (snapshot, _) => Feed.fromJson(snapshot.data() ?? {}),
          toFirestore: (feed, _) => feed.toJson(),
        )
        .where(
          "petID",
          isEqualTo: currentPet.petID.toJson(),
        );
    final List<Feed> response = await query.get().then((snapshot) =>
        snapshot.docs.map((doc) => doc.data()).cast<Feed>().toList());
    return response;
  }

  Future create({
    required UserID userID,
    required Pet pet,
    required Feed feed,
  }) async {
    final firestore = ref.watch(storageProvider);
    final petID = pet.petID;

    final document = firestore.collection(Feed.collectionName).doc();

    final entity = Feed(
      feedID: FeedID(document.id),
      date: feed.date,
      createdAt: feed.createdAt,
      updatedAt: DateTime.now(),
      petID: petID,
      feederID: userID,
    );
    await document.set(entity.toJson());
  }
}
