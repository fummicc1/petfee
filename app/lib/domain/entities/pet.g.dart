// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetID _$$_PetIDFromJson(Map<String, dynamic> json) => _$_PetID(
      json['value'] as String,
    );

Map<String, dynamic> _$$_PetIDToJson(_$_PetID instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_Pet _$$_PetFromJson(Map<String, dynamic> json) => _$_Pet(
      petID: PetID.fromJson(json['petID'] as Map<String, dynamic>),
      name: json['name'] as String,
      avatarURL: json['avatarURL'] as String?,
      numberOfFeedTimesPerDay: json['numberOfFeedTimesPerDay'] as int,
      users: (json['users'] as List<dynamic>)
          .map((e) => UserID.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PetToJson(_$_Pet instance) => <String, dynamic>{
      'petID': instance.petID.toJson(),
      'name': instance.name,
      'avatarURL': instance.avatarURL,
      'numberOfFeedTimesPerDay': instance.numberOfFeedTimesPerDay,
      'users': instance.users.map((e) => e.toJson()).toList(),
    };
