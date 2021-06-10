// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Time _$TimeFromJson(Map<String, dynamic> json) {
  return Time(
    time: json['time'] as String?,
    millis: json['millis'] as String?,
  );
}

Map<String, dynamic> _$TimeToJson(Time instance) => <String, dynamic>{
      'millis': instance.millis,
      'time': instance.time,
    };
