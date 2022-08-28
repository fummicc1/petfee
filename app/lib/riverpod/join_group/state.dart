import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petfee/domain/entities/pet.dart';

part 'state.freezed.dart';

@freezed
class JoinGroupState with _$JoinGroupState {
  const factory JoinGroupState({
    required final Pet pet,
    final String? errorMessage,
  }) = _JoinGroupState;
}
