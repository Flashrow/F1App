// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Race.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Race _$RaceFromJson(Map<String, dynamic> json) {
  return Race(
    season: json['season'] as String?,
    round: json['round'] as String?,
    circuit: json['Circuit'] == null
        ? null
        : Circuit.fromJson(json['Circuit'] as Map<String, dynamic>),
    url: json['url'] as String?,
    date: json['date'] as String?,
    raceName: json['raceName'] as String?,
    time: json['time'] as String?,
  )..results = (json['Results'] as List<dynamic>)
      .map((e) => Result.fromJson(e as Map<String, dynamic>))
      .toList();
}

Map<String, dynamic> _$RaceToJson(Race instance) => <String, dynamic>{
      'season': instance.season,
      'round': instance.round,
      'url': instance.url,
      'raceName': instance.raceName,
      'date': instance.date,
      'time': instance.time,
      'Circuit': instance.circuit,
      'Results': instance.results,
    };
