import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/core/respond/respond_model/login_model.dart';
import 'package:shop_app/features/login/data/remote/data_sources/web_services.dart';
import 'package:shop_app/features/login/data/remote/models/register_model.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/login_body_model.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/register_body_model.dart';
import 'package:shop_app/features/login/domain/repositories/login_repo.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginWebServices webServices;

  LoginRepositoryImpl({required this.webServices});

  @override
  Future<ApiResult<RespondModel>> login(
      String lang, LoginBodyModel loginBodyModel) async {
    try {
      RespondModel respond =
          await webServices.login(loginBodyModel, 'application/json', lang);
      return ApiResult.success(respond);
    } catch (e) {
      return ApiResult.failure(e);
    }
  }

  @override
  Future<ApiResult<RegisterModel>> register(
      String lang, RegisterBodyModel registerBodyModel) async{
    try {
      RegisterModel respond =
          await webServices.register(registerBodyModel, 'application/json', lang);
      return ApiResult.success(respond);
    } catch (e) {
      return ApiResult.failure(e);
    }
  }
}
