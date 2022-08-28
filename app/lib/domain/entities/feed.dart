import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/domain/entities/pet.dart';
import '/domain/entities/user.dart';

part 'feed.freezed.dart';
part 'feed.g.dart';


@freezed
class FeedID with _$FeedID {
  const factory FeedID(String value) = _FeedID;

  factory FeedID.fromJson(Map<String, dynamic> json) => _$FeedIDFromJson(json);
}

@freezed
class Feed with _$Feed {
  static const collectionName = kDebugMode ? "feeds-dev" : "feeds";

  @JsonSerializable(explicitToJson: true)
  const factory Feed({
    required FeedID feedID,
    required DateTime date,
    required DateTime createdAt,
    required DateTime updatedAt,
    required PetID petID,
    required UserID feederID,
  }) = _Feed;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}