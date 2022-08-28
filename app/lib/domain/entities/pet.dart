import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petfee/domain/entities/user.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

@freezed
class PetID with _$PetID {
  const factory PetID(String value) = _PetID;

  factory PetID.fromJson(Map<String, dynamic> json) => _$PetIDFromJson(json);
}

@freezed
class Pet with _$Pet {
  static const collectionName = kDebugMode ? "pets-dev" : "pets";

  @JsonSerializable(explicitToJson: true)
  const factory Pet({
    required PetID petID,
    required String name,
    String? avatarURL,
    required int numberOfFeedTimesPerDay,
    required List<UserID> users,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
}
