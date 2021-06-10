import 'package:json_annotation/json_annotation.dart';

part 'Time.g.dart';

@JsonSerializable()
class Time {
  Time({
    this.time,
    this.millis,
  });

  String? millis = "";
  String? time = "";

  factory Time.fromJson(Map<String, dynamic> json) =>
      _$TimeFromJson(json);
  Map<String, dynamic> toJson() => _$TimeToJson(this);
}
