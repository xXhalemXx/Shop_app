import 'package:shop_app/core/respond/respond_model/login_model.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/login_body_model.dart';
import 'package:shop_app/features/login/domain/repositories/login_repo.dart';
import 'package:shop_app/core/respond/general_api_respond/api_result.dart';

class LoginUseCase {
  LoginRepository loginRepository;

  LoginUseCase({required this.loginRepository});

  Future<ApiResult<RespondModel>> call(
      String lang, LoginBodyModel loginBodyModel) async {
    return await loginRepository.login(lang, loginBodyModel);
  }
}
