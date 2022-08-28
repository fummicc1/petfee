import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'state.freezed.dart';

@freezed
class AddNewPetState with _$AddNewPetState {
  factory AddNewPetState({
    @Default("") final String petName,
    @Default(2) final int numberOfFeedPerDay,
    @Default(false) final bool showLoading,
    @Default(false) final bool canCompleteNewPetSettings,
    final XFile? petAvatar,
  }) = _AddNewPetState;
}
