import 'package:f1app/models/TopTeamsChart/StandingList.dart';
import 'package:json_annotation/json_annotation.dart';

part 'MRData.g.dart';

@JsonSerializable()
class MRData{

  MRData({
    this.total,
  });

  int? total;
  @JsonKey(name: "StandingsList")
  StandingList? standingsList;

  factory MRData.fromJson(Map<String, dynamic> json) => _$MRDataFromJson(json);
  Map<String, dynamic> toJson() => _$MRDataToJson(this);
}