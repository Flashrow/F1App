// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DriverStanding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverStanding _$DriverStandingFromJson(Map<String, dynamic> json) {
  return DriverStanding(
    position: json['position'] as String?,
    points: json['points'] as String?,
    wins: json['wins'] as String?,
  )..driver = json['Driver'] == null
      ? null
      : Driver.fromJson(json['Driver'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DriverStandingToJson(DriverStanding instance) =>
    <String, dynamic>{
      'position': instance.position,
      'points': instance.points,
      'wins': instance.wins,
      'Driver': instance.driver,
    };
