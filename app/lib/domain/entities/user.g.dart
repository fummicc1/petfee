// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserID _$$_UserIDFromJson(Map<String, dynamic> json) => _$_UserID(
      json['value'] as String,
    );

Map<String, dynamic> _$$_UserIDToJson(_$_UserID instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userID: UserID.fromJson(json['userID'] as Map<String, dynamic>),
      authID: json['authID'] as String,
      isAnonymous: json['isAnonymous'] as bool,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userID': instance.userID.toJson(),
      'authID': instance.authID,
      'isAnonymous': instance.isAnonymous,
    };
