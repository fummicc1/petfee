import 'package:freezed_annotation/freezed_annotation.dart';
import '/domain/entities/pet.dart';

part 'state.freezed.dart';

@freezed
class PetState with _$PetState {
  const factory PetState({@Default([]) List<Pet> pets}) = _PetState;
}
