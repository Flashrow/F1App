import 'package:f1app/models/DataHolders/StandingsTable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'MRData.g.dart';

@JsonSerializable()
class MRData{

  MRData({
    this.total,
  });

  String? total;
  @JsonKey(name: "StandingsTable")
  StandingsTable? standingsTable;

  factory MRData.fromJson(Map<String, dynamic> json) => _$MRDataFromJson(json);
  Map<String, dynamic> toJson() => _$MRDataToJson(this);
}