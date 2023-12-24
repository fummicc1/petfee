// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetIDImpl _$$PetIDImplFromJson(Map<String, dynamic> json) => _$PetIDImpl(
      json['value'] as String,
    );

Map<String, dynamic> _$$PetIDImplToJson(_$PetIDImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$PetImpl _$$PetImplFromJson(Map<String, dynamic> json) => _$PetImpl(
      petID: PetID.fromJson(json['petID'] as Map<String, dynamic>),
      name: json['name'] as String,
      avatarURL: json['avatarURL'] as String?,
      numberOfFeedTimesPerDay: json['numberOfFeedTimesPerDay'] as int,
      users: (json['users'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PetImplToJson(_$PetImpl instance) => <String, dynamic>{
      'petID': instance.petID.toJson(),
      'name': instance.name,
      'avatarURL': instance.avatarURL,
      'numberOfFeedTimesPerDay': instance.numberOfFeedTimesPerDay,
      'users': instance.users.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
