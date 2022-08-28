import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petfee/domain/entities/pet.dart';

part 'state.freezed.dart';

@freezed
class AddFeedState with _$AddFeedState {
  factory AddFeedState({
    required final Pet pet,
    required final DateTime feededAt,
  }) = _AddFeedState;
}
