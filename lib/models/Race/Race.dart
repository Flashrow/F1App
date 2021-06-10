import 'package:f1app/models/Race/Circuit.dart';
import 'package:json_annotation/json_annotation.dart';

import 'Result.dart';

part 'Race.g.dart';

@JsonSerializable()
class Race {
  Race({
    this.season,
    this.round,
    this.circuit,
    this.url,
    this.date,
    this.raceName,
    this.time,
  });

  String? season = "";
  String? round = "";
  String? url = "";
  String? raceName = "";
  String? date = "";
  String? time = "";

  @JsonKey(name: 'Circuit')
  Circuit? circuit;

  @JsonKey(name: 'Results')
  List<Result>? results;

  factory Race.fromJson(Map<String, dynamic> json) => _$RaceFromJson(json);
  Map<String, dynamic> toJson() => _$RaceToJson(this);
}
