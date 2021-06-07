// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StandingsTable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandingsTable _$StandingsTableFromJson(Map<String, dynamic> json) {
  return StandingsTable(
    season: json['season'] as int?,
    standingList: (json['standingList'] as List<dynamic>?)
        ?.map((e) => StandingList.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$StandingsTableToJson(StandingsTable instance) =>
    <String, dynamic>{
      'season': instance.season,
      'standingList': instance.standingList,
    };
