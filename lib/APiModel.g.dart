// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'APiModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Welcome _$WelcomeFromJson(Map<String, dynamic> json) => Welcome(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WelcomeToJson(Welcome instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      countries_id: json['countries_id'] as String,
      countries_name: json['countries_name'] as String,
      countries_iso_code: json['countries_iso_code'] as String,
      country_code: json['country_code'] as String,
      flag: json['flag'] as String,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'countries_id': instance.countries_id,
      'countries_name': instance.countries_name,
      'countries_iso_code': instance.countries_iso_code,
      'country_code': instance.country_code,
      'flag': instance.flag,
    };
