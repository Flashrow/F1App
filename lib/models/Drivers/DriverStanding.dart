import 'package:f1app/models/Constructors/Constructor.dart';
import 'package:f1app/models/Drivers/Driver.dart';
import 'package:json_annotation/json_annotation.dart';

part 'DriverStanding.g.dart';

@JsonSerializable()
class DriverStanding {
  DriverStanding({
    this.position,
    this.points,
    this.wins,
    this.constructor,
  });
  String? position = "";
  String? points = "";
  String? wins = "";

  @JsonKey(name: "Driver")
  Driver? driver;

  @JsonKey(name: 'Constructors')
  List<Constructor>? constructor;

  factory DriverStanding.fromJson(Map<String, dynamic> json) =>
      _$DriverStandingFromJson(json);
  Map<String, dynamic> toJson() => _$DriverStandingToJson(this);
}
