// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Constructor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Constructor _$ConstructorFromJson(Map<String, dynamic> json) {
  return Constructor(
    constructorId: json['constructorId'] as String?,
    url: json['url'] as String?,
    name: json['name'] as String?,
    nationality: json['nationality'] as String?,
  );
}

Map<String, dynamic> _$ConstructorToJson(Constructor instance) =>
    <String, dynamic>{
      'constructorId': instance.constructorId,
      'url': instance.url,
      'name': instance.name,
      'nationality': instance.nationality,
    };
