import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:petfee/domain/exceptions/pet.dart';
import 'package:petfee/domain/services/storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/domain/entities/pet.dart';
import '/domain/entities/user.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true, dependencies: [storage])
class PetRepository extends _$PetRepository {
  @override
  List<Pet> build() {
    return [];
  }

  Future<String> saveNewPet({
    required UserID userID,
    required Pet entity,
    File? avatar,
  }) async {
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
      await ref.putFile(avatar, meta);
      final url = await ref.getDownloadURL();
      entity = entity.copyWith(avatarURL: url);
    }

    await document.set(entity.toJson());
    return document.id;
  }

  Future update({required Pet pet}) async {
    final document = FirebaseFirestore.instance
        .collection(Pet.collectionName)
        .doc(pet.petID.value);
    await document.set(pet.toJson());
  }

  Future<Pet> fetchSingle({required PetID petID}) async {
    final firestore = ref.watch(storageProvider);
    final DocumentSnapshot<Pet> response = await firestore
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

  Stream<List<Pet>> petListSnapshot({required UserID userID}) {
    final firestore = ref.watch(storageProvider);
    Query query = firestore
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
