import 'package:f1app/models/TopTeamsChart/ConstructorStanding.dart';
import 'package:json_annotation/json_annotation.dart';

part 'StandingList.g.dart';

@JsonSerializable()
class StandingList {
  StandingList({
    this.season,
    this.round,
  });
  int? season;
  int? round;
  @JsonKey(name: 'ConstructorStandings')
  List<ConstructorStanding>? constructorStandings;

  factory StandingList.fromJson(Map<String, dynamic> json) =>
      _$StandingListFromJson(json);
  Map<String, dynamic> toJson() => _$StandingListToJson(this);
}
