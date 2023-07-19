import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shop_app/core/respond/respond_model/login_model.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/login_body_model.dart';


part 'web_services.g.dart';

@RestApi(baseUrl: "https://student.valuxapps.com/api/")
abstract class LoginWebServices {
  factory LoginWebServices(Dio dio, {String baseUrl}) = _LoginWebServices;

  @POST("login")
  Future<RespondModel> login(@Body() LoginBodyModel loginBodyModel,
      @Header('Content-Type') String contentType,
      @Header('lang') String lang);

}
