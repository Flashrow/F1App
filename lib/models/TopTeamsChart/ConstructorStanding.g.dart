// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ConstructorStanding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstructorStanding _$ConstructorStandingFromJson(Map<String, dynamic> json) {
  return ConstructorStanding(
    position: json['position'] as int?,
    points: json['points'] as int?,
    wins: json['wins'] as int?,
  )..constructor = json['Constructor'] == null
      ? null
      : Constructor.fromJson(json['Constructor'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ConstructorStandingToJson(
        ConstructorStanding instance) =>
    <String, dynamic>{
      'position': instance.position,
      'points': instance.points,
      'wins': instance.wins,
      'Constructor': instance.constructor,
    };
