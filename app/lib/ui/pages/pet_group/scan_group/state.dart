import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class ScanPetGroupState with _$ScanPetGroupState {
  const factory ScanPetGroupState({
    @Default(0) double refreshFrame,
  }) = _ScanPetGroupState;
}
