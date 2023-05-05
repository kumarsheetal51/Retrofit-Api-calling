
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'APiModel.g.dart';

@JsonSerializable()
class Welcome {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "data")
  List<Datum?> data;

  Welcome({
    required this.status,
    required this.message,
    required this.data,
  });




  factory Welcome.fromJson(Map<String, dynamic> json) => _$WelcomeFromJson(json);

  Map<String, dynamic> toJson() => _$WelcomeToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "countries_id")
  String? countries_id;
  @JsonKey(name: "countries_name")
  String? countries_name;
  @JsonKey(name: "countries_iso_code")
  String? countries_iso_code;
  @JsonKey(name: "country_code")
  String? country_code;
  @JsonKey(name: "flag")
  String? flag;

  Datum({
    required this.countries_id,
    required this.countries_name,
    required this.countries_iso_code,
    required this.country_code,
    required this.flag,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
