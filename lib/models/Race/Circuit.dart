import 'package:f1app/models/Race/Location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Circuit.g.dart';

@JsonSerializable()
class Circuit {
  Circuit({
    this.url,
    this.circuitName,
    this.location,
  });

  String? url = "";
  String? circuitName = "";

  @JsonKey(name: 'Location')
  Location? location = Location();

  factory Circuit.fromJson(Map<String, dynamic> json) =>
      _$CircuitFromJson(json);
  Map<String, dynamic> toJson() => _$CircuitToJson(this);
}
