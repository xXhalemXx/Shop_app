import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/features/home/data/models/home_model.dart';
import 'package:shop_app/features/home/domain/repositories/home_repo.dart';

class GetHomeData {
  final HomeRepository homeRepository;

  GetHomeData({required this.homeRepository});

  Future<ApiResult<HomeModel>> call(String lang, String token) async {
    return await homeRepository.getHomeData(lang, token);
  }
}
