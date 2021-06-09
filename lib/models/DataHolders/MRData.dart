import 'package:f1app/models/DataHolders/DriverTable.dart';
import 'package:f1app/models/DataHolders/StandingList.dart';
import 'package:f1app/models/DataHolders/StandingsTable.dart';
import 'package:f1app/models/Race/RaceTable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'MRData.g.dart';

@JsonSerializable()
class MRData {
  MRData({
    this.total,
  });

  String? total = "";

  @JsonKey(name: 'StandingsTable')
  StandingsTable? standingsTable = StandingsTable();

  @JsonKey(name: "DriverTable")
  DriverTable driverTable = DriverTable();

  @JsonKey(name: 'RaceTable')
  RaceTable? raceTable = RaceTable();

  factory MRData.fromJson(Map<String, dynamic> json) => _$MRDataFromJson(json);
  Map<String, dynamic> toJson() => _$MRDataToJson(this);
}
