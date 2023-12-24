// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserIDImpl _$$UserIDImplFromJson(Map<String, dynamic> json) => _$UserIDImpl(
      json['value'] as String,
    );

Map<String, dynamic> _$$UserIDImplToJson(_$UserIDImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      userID: UserID.fromJson(json['userID'] as Map<String, dynamic>),
      authID: json['authID'] as String,
      isAnonymous: json['isAnonymous'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'userID': instance.userID.toJson(),
      'authID': instance.authID,
      'isAnonymous': instance.isAnonymous,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
