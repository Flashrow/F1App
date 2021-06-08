// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return Driver(
    driverId: json['driverId'] as String?,
    url: json['url'] as String?,
    givenName: json['givenName'] as String?,
    familyName: json['familyName'] as String?,
    nationality: json['nationality'] as String?,
    dateOfBirth: json['dateOfBirth'] as String?,
  );
}

Map<String, dynamic> _$DriverToJson(Driver instance) => <String, dynamic>{
      'driverId': instance.driverId,
      'url': instance.url,
      'givenName': instance.givenName,
      'familyName': instance.familyName,
      'dateOfBirth': instance.dateOfBirth,
      'nationality': instance.nationality,
    };
