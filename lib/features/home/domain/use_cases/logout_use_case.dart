import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/features/home/data/models/logout_model.dart';
import 'package:shop_app/features/home/domain/repositories/home_repo.dart';

class Logout {
  HomeRepository homeRepository;

  Logout({required this.homeRepository});

  Future<ApiResult<LogoutModel>> call(String lang, String token) async {
    return await homeRepository.logout(lang, token);
  }
}
