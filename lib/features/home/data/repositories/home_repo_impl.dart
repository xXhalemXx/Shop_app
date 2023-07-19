import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/core/respond/respond_model/login_model.dart';
import 'package:shop_app/features/home/data/data_sources/home_web_services.dart';
import 'package:shop_app/features/home/data/models/category_model.dart';
import 'package:shop_app/features/home/data/models/fav_models/add_or_delete_body.dart';
import 'package:shop_app/features/home/data/models/fav_models/add_or_delete_response.dart';
import 'package:shop_app/features/home/data/models/fav_models/favorites_model.dart';
import 'package:shop_app/features/home/data/models/home_model.dart';
import 'package:shop_app/features/home/data/models/logout_model.dart';
import 'package:shop_app/features/home/domain/repositories/home_repo.dart';

class HomeRepositoriesIpm extends HomeRepository {
  HomeWebServices homeWebServices;

  HomeRepositoriesIpm({required this.homeWebServices});

  @override
  Future<ApiResult<RespondModel>> checkLogin(String lang, String token) async {
    try {
      RespondModel respondModel =
          await homeWebServices.checkLogin('application/json', lang, token);
      return ApiResult.success(respondModel);
    } catch (error) {
      return ApiResult.failure(error);
    }
  }

  @override
  Future<ApiResult<HomeModel>> getHomeData(String lang, String token) async {
    try {
      HomeModel homeModel =
          await homeWebServices.getHomeData('application/json', lang, token);
      return ApiResult.success(homeModel);
    } catch (error) {
      return ApiResult.failure(error);
    }
  }

  @override
  Future<ApiResult<AddOrDeleteResponse>> addOrDeleteFav(
      AddOrDeleteBody addOrDeleteBody, String lang, String token) async {
    try {
      AddOrDeleteResponse response = await homeWebServices.addOrDeleteFav(
          addOrDeleteBody, 'application/json', lang, token);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error);
    }
  }

  @override
  Future<ApiResult<FavoriteModel>> getAllFav(String lang, String token) async {
    try {
      FavoriteModel favoriteModel =
          await homeWebServices.getAllFav('application/json', lang, token);
      return ApiResult.success(favoriteModel);
    } catch (error) {
      return ApiResult.failure(error);
    }
  }

  @override
  Future<ApiResult<CategoryModel>> getAllCategory(String lang) async {
    try {
      CategoryModel categoryModel = await homeWebServices.getCategory(lang);
      return ApiResult.success(categoryModel);
    } catch (error) {
      return ApiResult.failure(error);
    }
  }

  @override
  Future<ApiResult<LogoutModel>> logout(String lang, String token) async {
    try {
      LogoutModel logoutModel =
          await homeWebServices.logout('application/json', lang, token);
      return ApiResult.success(logoutModel);
    } catch (error) {
      return ApiResult.failure(error);
    }
  }
}
