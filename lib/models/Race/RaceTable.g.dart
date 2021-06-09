// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RaceTable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RaceTable _$RaceTableFromJson(Map<String, dynamic> json) {
  return RaceTable(
    races: (json['Races'] as List<dynamic>?)
        ?.map((e) => Race.fromJson(e as Map<String, dynamic>))
        .toList(),
    round: json['round'] as String?,
    season: json['season'] as String?,
  );
}

Map<String, dynamic> _$RaceTableToJson(RaceTable instance) => <String, dynamic>{
      'season': instance.season,
      'round': instance.round,
      'Races': instance.races,
    };
