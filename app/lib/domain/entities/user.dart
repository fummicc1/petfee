import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserID with _$UserID {
  const factory UserID(String value) = _UserID;

  factory UserID.fromJson(Map<String, dynamic> json) => _$UserIDFromJson(json);
}

@freezed
class User with _$User {
  static const collectionName = kDebugMode ? "users-dev" : "users";

  @JsonSerializable(explicitToJson: true)
  const factory User({
    required UserID userID,
    required String authID,
    required bool isAnonymous,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
