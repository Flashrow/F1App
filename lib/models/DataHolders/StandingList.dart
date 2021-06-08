import 'package:f1app/models/Constructors/ConstructorStanding.dart';
import 'package:f1app/models/Drivers/DriverStanding.dart';
import 'package:json_annotation/json_annotation.dart';

part 'StandingList.g.dart';

@JsonSerializable()
class StandingList {
  StandingList({
    this.season,
    this.round,
  });
  String? season;
  String? round;
  
  @JsonKey(name: 'ConstructorStandings')
  List<ConstructorStanding>? constructorStandings;

  @JsonKey(name: 'DriverStandings')
  List<DriverStanding>? driverStandings;
  
  factory StandingList.fromJson(Map<String, dynamic> json) =>
      _$StandingListFromJson(json);
  Map<String, dynamic> toJson() => _$StandingListToJson(this);
}
