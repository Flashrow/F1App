import 'package:json_annotation/json_annotation.dart';

part 'Constructor.g.dart';

@JsonSerializable()
class Constructor {
  Constructor({
    this.constructorId,
    this.url,
    this.name,
    this.nationality,
  });

  String? constructorId;
  String? url;
  String? name;
  String? nationality;

  factory Constructor.fromJson(Map<String, dynamic> json) =>
      _$ConstructorFromJson(json);
  Map<String, dynamic> toJson() => _$ConstructorToJson(this);
}
