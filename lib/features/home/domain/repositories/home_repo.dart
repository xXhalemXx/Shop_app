import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/core/respond/respond_model/login_model.dart';
import 'package:shop_app/features/home/data/models/category_model.dart';
import 'package:shop_app/features/home/data/models/fav_models/add_or_delete_body.dart';
import 'package:shop_app/features/home/data/models/fav_models/add_or_delete_response.dart';
import 'package:shop_app/features/home/data/models/fav_models/favorites_model.dart';
import 'package:shop_app/features/home/data/models/home_model.dart';
import 'package:shop_app/features/home/data/models/logout_model.dart';

abstract class HomeRepository {
  Future<ApiResult<RespondModel>> checkLogin(String lang, String token);

  Future<ApiResult<HomeModel>> getHomeData(String lang, String token);

  Future<ApiResult<AddOrDeleteResponse>> addOrDeleteFav(
      AddOrDeleteBody addOrDeleteBody, String lang, String token);
  Future<ApiResult<FavoriteModel>> getAllFav(String lang, String token);
  Future<ApiResult<CategoryModel>> getAllCategory(String lang);
  Future<ApiResult<LogoutModel>> logout(String lang, String token);
}
