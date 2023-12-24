import 'package:petfee/domain/entities/pet.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@riverpod
class CurrentPetRepository extends _$CurrentPetRepository {
  @override
  Pet? build() {
    return null;
  }
}
