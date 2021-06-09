import 'package:json_annotation/json_annotation.dart';

part 'Location.g.dart';

@JsonSerializable()
class Location {
  Location({
    this.locality,
    this.country,
  });

  String? locality = "";
  String? country = "";

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
