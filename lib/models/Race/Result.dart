import 'package:f1app/models/Constructors/Constructor.dart';
import 'package:f1app/models/Drivers/Driver.dart';
import 'package:f1app/models/Race/Time.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Result.g.dart';

@JsonSerializable()
class Result {
  Result({
   this.number,
   this.constructor,
   this.driver,
   this.points,
   this.position,
   this.grid,
   this.laps,
   this.status,
  });

  String? number = "";
  String? position = "";
  String? points = "";
  String? grid = "";
  String? laps = "";
  String? status = "";

  @JsonKey(name: "Driver")
  Driver? driver;

  @JsonKey(name: "Constructor")
  Constructor? constructor;

  @JsonKey(name: "Time")
  Time? time;
  
  factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
