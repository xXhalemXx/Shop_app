import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/core/respond/respond_model/login_model.dart';
import 'package:shop_app/features/login/data/remote/models/register_model.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/login_body_model.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/register_body_model.dart';

abstract class LoginRepository {
  Future<ApiResult<RespondModel>> login(
      String lang, LoginBodyModel loginBodyModel);

  Future<ApiResult<RegisterModel>> register(
      String lang, RegisterBodyModel registerBodyModel);
}
