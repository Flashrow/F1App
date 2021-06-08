import 'package:f1app/models/Constructors/Constructor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Driver.g.dart';

@JsonSerializable()
class Driver {
  Driver({
    this.driverId,
    this.url,
    this.givenName,
    this.familyName,
    this.nationality,
    this.dateOfBirth,
  });

  String? driverId;
  String? url;
  String? givenName;
  String? familyName;
  String? dateOfBirth;
  String? nationality;

  factory Driver.fromJson(Map<String, dynamic> json) =>
      _$DriverFromJson(json);
  Map<String, dynamic> toJson() => _$DriverToJson(this);
}
