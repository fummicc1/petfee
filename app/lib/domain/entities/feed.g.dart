// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedIDImpl _$$FeedIDImplFromJson(Map<String, dynamic> json) => _$FeedIDImpl(
      json['value'] as String,
    );

Map<String, dynamic> _$$FeedIDImplToJson(_$FeedIDImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$FeedImpl _$$FeedImplFromJson(Map<String, dynamic> json) => _$FeedImpl(
      feedID: FeedID.fromJson(json['feedID'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      petID: PetID.fromJson(json['petID'] as Map<String, dynamic>),
      feederID: UserID.fromJson(json['feederID'] as Map<String, dynamic>),
      memo: json['memo'] as String?,
    );

Map<String, dynamic> _$$FeedImplToJson(_$FeedImpl instance) =>
    <String, dynamic>{
      'feedID': instance.feedID.toJson(),
      'date': instance.date.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'petID': instance.petID.toJson(),
      'feederID': instance.feederID.toJson(),
      'memo': instance.memo,
    };
