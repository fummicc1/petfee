// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedID _$$_FeedIDFromJson(Map<String, dynamic> json) => _$_FeedID(
      json['value'] as String,
    );

Map<String, dynamic> _$$_FeedIDToJson(_$_FeedID instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_Feed _$$_FeedFromJson(Map<String, dynamic> json) => _$_Feed(
      feedID: FeedID.fromJson(json['feedID'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      petID: PetID.fromJson(json['petID'] as Map<String, dynamic>),
      feederID: UserID.fromJson(json['feederID'] as Map<String, dynamic>),
      memo: json['memo'] as String?,
    );

Map<String, dynamic> _$$_FeedToJson(_$_Feed instance) => <String, dynamic>{
      'feedID': instance.feedID.toJson(),
      'date': instance.date.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'petID': instance.petID.toJson(),
      'feederID': instance.feederID.toJson(),
      'memo': instance.memo,
    };
