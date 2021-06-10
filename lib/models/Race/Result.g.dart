// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    number: json['number'] as String?,
    constructor: json['Constructor'] == null
        ? null
        : Constructor.fromJson(json['Constructor'] as Map<String, dynamic>),
    driver: json['Driver'] == null
        ? null
        : Driver.fromJson(json['Driver'] as Map<String, dynamic>),
    points: json['points'] as String?,
    position: json['position'] as String?,
    grid: json['grid'] as String?,
    laps: json['laps'] as String?,
    status: json['status'] as String?,
  )..time = json['Time'] == null
      ? null
      : Time.fromJson(json['Time'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'number': instance.number,
      'position': instance.position,
      'points': instance.points,
      'grid': instance.grid,
      'laps': instance.laps,
      'status': instance.status,
      'Driver': instance.driver,
      'Constructor': instance.constructor,
      'Time': instance.time,
    };
