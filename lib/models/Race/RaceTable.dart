import 'package:f1app/models/Race/Race.dart';
import 'package:json_annotation/json_annotation.dart';

part 'RaceTable.g.dart';

@JsonSerializable()
class RaceTable {
  RaceTable({
    this.races,
    this.round,
    this.season,
  });

  String? season = "";
  String? round = "";

  @JsonKey(name: 'Races')
  List<Race>? races = [];

  factory RaceTable.fromJson(Map<String, dynamic> json) => _$RaceTableFromJson(json);
  Map<String, dynamic> toJson() => _$RaceTableToJson(this);
}
