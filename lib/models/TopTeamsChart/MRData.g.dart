// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MRData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MRData _$MRDataFromJson(Map<String, dynamic> json) {
  return MRData(
    total: json['total'] as int?,
  )..standingsList = json['StandingsList'] == null
      ? null
      : StandingList.fromJson(json['StandingsList'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MRDataToJson(MRData instance) => <String, dynamic>{
      'total': instance.total,
      'StandingsList': instance.standingsList,
    };
