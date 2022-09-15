import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petfee/domain/entities/pet.dart';

part 'pet.freezed.dart';

@freezed
class PetException with _$PetException implements Exception {
  factory PetException.notExists(PetID petID) = _NotExists;
  factory PetException.alreadyJoined() = _AlreadyJoined;
  factory PetException.emptyList() = _EmptyList;
}