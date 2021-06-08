// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StandingList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandingList _$StandingListFromJson(Map<String, dynamic> json) {
  return StandingList(
    season: json['season'] as String?,
    round: json['round'] as String?,
  )
    ..constructorStandings = (json['ConstructorStandings'] as List<dynamic>?)
        ?.map((e) => ConstructorStanding.fromJson(e as Map<String, dynamic>))
        .toList()
    ..driverStandings = (json['DriverStandings'] as List<dynamic>?)
        ?.map((e) => DriverStanding.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$StandingListToJson(StandingList instance) =>
    <String, dynamic>{
      'season': instance.season,
      'round': instance.round,
      'ConstructorStandings': instance.constructorStandings,
      'DriverStandings': instance.driverStandings,
    };
