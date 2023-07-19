import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/features/home/data/models/fav_models/favorites_model.dart';
import 'package:shop_app/features/home/domain/repositories/home_repo.dart';

class GetAllFav{
  final HomeRepository homeRepository;
  GetAllFav({required this.homeRepository});

  Future<ApiResult<FavoriteModel>> call(String lang,String token) async{
    return await homeRepository.getAllFav(lang, token);
  }
}