// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Ergast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ergast _$ErgastFromJson(Map<String, dynamic> json) {
  return Ergast(
    mrData: json['MRData'] == null
        ? null
        : MRData.fromJson(json['MRData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ErgastToJson(Ergast instance) => <String, dynamic>{
      'MRData': instance.mrData,
    };
