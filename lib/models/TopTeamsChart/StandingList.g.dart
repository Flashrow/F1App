// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StandingList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandingList _$StandingListFromJson(Map<String, dynamic> json) {
  return StandingList(
    season: json['season'] as int?,
    round: json['round'] as int?,
  )..constructorStandings = (json['ConstructorStandings'] as List<dynamic>?)
      ?.map((e) => ConstructorStanding.fromJson(e as Map<String, dynamic>))
      .toList();
}

Map<String, dynamic> _$StandingListToJson(StandingList instance) =>
    <String, dynamic>{
      'season': instance.season,
      'round': instance.round,
      'ConstructorStandings': instance.constructorStandings,
    };
