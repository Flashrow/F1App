import 'package:json_annotation/json_annotation.dart';
import 'package:f1app/models/DataHolders/StandingList.dart';

part 'StandingsTable.g.dart';

@JsonSerializable()
class StandingsTable {
  StandingsTable({
    this.season,
    this.standingsList,
  });

  String? season = "";

  @JsonKey(name: 'StandingsLists')
  List<StandingList>? standingsList = [];

  factory StandingsTable.fromJson(Map<String, dynamic> json) =>
      _$StandingsTableFromJson(json);
  Map<String, dynamic> toJson() => _$StandingsTableToJson(this);
}
