// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DriverTable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverTable _$DriverTableFromJson(Map<String, dynamic> json) {
  return DriverTable(
    season: json['season'] as String?,
    drivers: (json['Drivers'] as List<dynamic>?)
        ?.map((e) => Driver.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DriverTableToJson(DriverTable instance) =>
    <String, dynamic>{
      'season': instance.season,
      'Drivers': instance.drivers,
    };
