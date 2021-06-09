// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Circuit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Circuit _$CircuitFromJson(Map<String, dynamic> json) {
  return Circuit(
    url: json['url'] as String?,
    circuitName: json['circuitName'] as String?,
    location: json['Location'] == null
        ? null
        : Location.fromJson(json['Location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CircuitToJson(Circuit instance) => <String, dynamic>{
      'url': instance.url,
      'circuitName': instance.circuitName,
      'Location': instance.location,
    };
