import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/domain/entities/feed.dart';
import '/domain/entities/pet.dart';
import '/domain/entities/user.dart';

abstract class FeedRepository {
  Stream<List<Feed>> feedsSnapshot({
    required PetID petID,
  });

  Future<List<Feed>> fetchFeeds({
    required PetID petID,
  });

  Future saveNewFeed({
    required UserID userID,
    required Pet pet,
    required Feed feed,
  });
}

class FeedRepositoryImpl implements FeedRepository {
  FeedRepositoryImpl(this._firestore);

  static final shared = FeedRepositoryImpl(FirebaseFirestore.instance);

  final FirebaseFirestore _firestore;

  @override
  Stream<List<Feed>> feedsSnapshot({required PetID petID}) {
    Query query = _firestore
        .collection(Feed.collectionName)
        .withConverter<Feed>(
          fromFirestore: (snapshot, _) => Feed.fromJson(snapshot.data() ?? {}),
          toFirestore: (feed, _) => feed.toJson(),
        )
        .where(
          "petID",
          isEqualTo: petID.toJson(),
        );
    final Stream<List<Feed>> response = query.snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => doc.data()).cast<Feed>().toList());
    return response;
  }

  @override
  Future<List<Feed>> fetchFeeds({
    required PetID petID,
  }) async {
    Query query = _firestore
        .collection(Feed.collectionName)
        .withConverter<Feed>(
          fromFirestore: (snapshot, _) => Feed.fromJson(snapshot.data() ?? {}),
          toFirestore: (feed, _) => feed.toJson(),
        )
        .where(
          "petID",
          isEqualTo: petID.toJson(),
        );
    final List<Feed> response = await query.get().then((snapshot) =>
        snapshot.docs.map((doc) => doc.data()).cast<Feed>().toList());
    return response;
  }

  @override
  Future saveNewFeed({
    required UserID userID,
    required Pet pet,
    required Feed feed,
  }) async {
    final petID = pet.petID;

    final document = _firestore.collection(Feed.collectionName).doc();

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

final feedRepositoryProvider = Provider((ref) => FeedRepositoryImpl.shared);
