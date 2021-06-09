// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MRData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MRData _$MRDataFromJson(Map<String, dynamic> json) {
  return MRData(
    total: json['total'] as String?,
  )
    ..standingsTable = json['StandingsTable'] == null
        ? null
        : StandingsTable.fromJson(
            json['StandingsTable'] as Map<String, dynamic>)
    ..driverTable =
        DriverTable.fromJson(json['DriverTable'] as Map<String, dynamic>)
    ..raceTable = json['RaceTable'] == null
        ? null
        : RaceTable.fromJson(json['RaceTable'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MRDataToJson(MRData instance) => <String, dynamic>{
      'total': instance.total,
      'StandingsTable': instance.standingsTable,
      'DriverTable': instance.driverTable,
      'RaceTable': instance.raceTable,
    };
