import 'package:json_annotation/json_annotation.dart';
import 'package:f1app/models/TopTeamsChart/StandingList.dart';

part 'StandingsTable.g.dart';

@JsonSerializable()
class StandingsTable {
  StandingsTable({
    this.season,
    this.standingList,
  });

  int? season;
  List<StandingList>? standingList;

  factory StandingsTable.fromJson(Map<String, dynamic> json) =>
      _$StandingsTableFromJson(json);
  Map<String, dynamic> toJson() => _$StandingsTableToJson(this);
}
