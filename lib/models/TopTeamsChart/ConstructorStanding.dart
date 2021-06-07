import 'package:f1app/models/TopTeamsChart/Constructor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ConstructorStanding.g.dart';

@JsonSerializable()
class ConstructorStanding {
  ConstructorStanding({
    this.position,
    this.points,
    this.wins,
  });
  int? position;
  int? points;
  int? wins;

  @JsonKey(name: "Constructor")
  Constructor? constructor;

    factory ConstructorStanding.fromJson(Map<String, dynamic> json) =>
      _$ConstructorStandingFromJson(json);
  Map<String, dynamic> toJson() => _$ConstructorStandingToJson(this);
}
