import 'package:f1app/models/DataHolders/MRData.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Ergast.g.dart';

@JsonSerializable()
class Ergast{

  Ergast({
    this.mrData,
  });

  @JsonKey(name: "MRData")
  MRData? mrData = MRData();

  factory Ergast.fromJson(Map<String, dynamic> json) => _$ErgastFromJson(json);
  Map<String, dynamic> toJson() => _$ErgastToJson(this);
}