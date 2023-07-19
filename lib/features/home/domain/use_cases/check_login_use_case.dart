import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/core/respond/respond_model/login_model.dart';
import 'package:shop_app/features/home/domain/repositories/home_repo.dart';

class CheckLogin{
  final HomeRepository homeRepository;
  CheckLogin({required this.homeRepository});

 Future<ApiResult<RespondModel>> call(String lang,String token)async{
    return  await homeRepository.checkLogin(lang, token);
  }
}