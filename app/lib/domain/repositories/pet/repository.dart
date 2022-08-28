import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/domain/entities/pet.dart';
import '/domain/entities/user.dart';
import '../../exceptions/pet.dart';

mixin PetRepository {
  Future<String> saveNewPet({
    required UserID userID,
    required Pet entity,
    File? avatar,
  });

  Future updatePet(Pet entity);

  Future<List<Pet>> fetchPetList({required UserID userID});

  Stream<List<Pet>> petListSnapshot({required UserID userID});

  Future<Pet> fetchSingle({required PetID petID});
}

class PetRepositoryImpl with PetRepository {
  PetRepositoryImpl(this._firestore);

  static final shared = PetRepositoryImpl(FirebaseFirestore.instance);

  final FirebaseFirestore _firestore;

  @override
  Future<String> saveNewPet(
      {required UserID userID, required Pet entity, File? avatar}) async {
    final document =
        FirebaseFirestore.instance.collection(Pet.collectionName).doc();
    entity = entity.copyWith(
      petID: PetID(document.id),
      users: [userID],
    );

    if (avatar != null) {
      final path = "pets/${document.id}.jpeg";
      final ref = FirebaseStorage.instance.ref(path);
      final meta = SettableMetadata(contentType: "image/jpeg");
      final _ = await ref.putFile(avatar, meta);
      final url = await ref.getDownloadURL();
      entity = entity.copyWith(avatarURL: url);
    }

    await document.set(entity.toJson());
    return document.id;
  }

  @override
  Future updatePet(Pet entity) async {
    final document = FirebaseFirestore.instance
        .collection(Pet.collectionName)
        .doc(entity.petID.value);
    await document.set(entity.toJson());
  }

  @override
  Future<Pet> fetchSingle({required PetID petID}) async {
    final DocumentSnapshot<Pet> response = await _firestore
        .collection(Pet.collectionName)
        .doc(petID.value)
        .withConverter<Pet>(
          fromFirestore: (snapshot, _) => Pet.fromJson(snapshot.data() ?? {}),
          toFirestore: (pet, _) => pet.toJson(),
        )
        .get();
    if (response.data() == null) {
      throw PetException.notExists(petID);
    }
    return response.data()!;
  }

  @override
  Stream<List<Pet>> petListSnapshot({required UserID userID}) {
    Query query = _firestore
        .collection(Pet.collectionName)
        .where(
          "users",
          arrayContains: userID.toJson(),
        )
        .withConverter<Pet>(
          fromFirestore: (snapshot, _) => Pet.fromJson(snapshot.data() ?? {}),
          toFirestore: (pet, _) => pet.toJson(),
        );
    final Stream<List<Pet>> response = query.snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => doc.data()).cast<Pet>().toList());
    return response;
  }

  @override
  Future<List<Pet>> fetchPetList({required UserID userID}) async {
    Query query = FirebaseFirestore.instance
        .collection(Pet.collectionName)
        .withConverter<Pet>(
          fromFirestore: (snapshot, _) => Pet.fromJson(snapshot.data() ?? {}),
          toFirestore: (pet, _) => pet.toJson(),
        )
        .where(
          "users",
          arrayContains: userID.toJson(),
        );
    final List<Pet> response = await query.get().then((snapshots) =>
        snapshots.docs.map((doc) => doc.data()).cast<Pet>().toList());
    return response;
  }
}

final petRepositoryProvider = Provider((ref) => PetRepositoryImpl.shared);
