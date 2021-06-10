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
  StandingsTable? standingsTable;

  @JsonKey(name: "DriverTable")
  DriverTable? driverTable;

  @JsonKey(name: 'RaceTable')
  RaceTable? raceTable;

  factory MRData.fromJson(Map<String, dynamic> json) => _$MRDataFromJson(json);
  Map<String, dynamic> toJson() => _$MRDataToJson(this);
}
