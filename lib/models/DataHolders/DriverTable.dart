import 'package:f1app/models/Drivers/Driver.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:f1app/models/DataHolders/StandingList.dart';

part 'DriverTable.g.dart';

@JsonSerializable()
class DriverTable {
  DriverTable({
    this.season,
    this.drivers,
  });

  String? season = "";

  @JsonKey(name: 'Drivers')
  List<Driver>? drivers = [];

  factory DriverTable.fromJson(Map<String, dynamic> json) =>
      _$DriverTableFromJson(json);
  Map<String, dynamic> toJson() => _$DriverTableToJson(this);
}
