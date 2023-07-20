import 'package:flutter/foundation.dart';
import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/features/login/data/remote/models/register_model.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/register_body_model.dart';
import 'package:shop_app/features/login/domain/repositories/login_repo.dart';

class Register {
  LoginRepository loginRepository;

  Register({required this.loginRepository});

  Future<ApiResult<RegisterModel>> call({
    required String lang,
    required RegisterBodyModel registerBodyModel,
  }) async {
    return await loginRepository.register(lang, registerBodyModel);
  }
}
