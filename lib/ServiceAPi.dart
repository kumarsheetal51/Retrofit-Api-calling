import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'APiModel.dart';

part 'ServiceAPi.g.dart';

@RestApi(baseUrl: "https://bpj.scf.mybluehost.me/mylocalbusiness/")
abstract class RestClient {
  factory RestClient({String? baseUrl}){
    Dio dio=Dio();

    dio.interceptors.add(LogInterceptor(
      responseHeader: true,
      responseBody: true,
      requestHeader: true,
      requestBody: true,
    ));
    return _RestClient(dio, baseUrl: baseUrl);
  }

  @GET("/getCountries")
  Future<Welcome> getTasks();
}
