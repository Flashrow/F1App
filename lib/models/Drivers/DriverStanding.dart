import 'package:f1app/models/Drivers/Driver.dart';
import 'package:json_annotation/json_annotation.dart';

part 'DriverStanding.g.dart';

@JsonSerializable()
class DriverStanding {
  DriverStanding({
    this.position,
    this.points,
    this.wins,
  });
  String? position;
  String? points;
  String? wins;

  @JsonKey(name: "Driver")
  Driver? driver;

    factory DriverStanding.fromJson(Map<String, dynamic> json) =>
      _$DriverStandingFromJson(json);
  Map<String, dynamic> toJson() => _$DriverStandingToJson(this);
}
