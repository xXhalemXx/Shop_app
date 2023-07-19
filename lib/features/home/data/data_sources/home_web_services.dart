import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shop_app/core/respond/respond_model/login_model.dart';
import 'package:shop_app/features/home/data/models/category_model.dart';
import 'package:shop_app/features/home/data/models/fav_models/add_or_delete_body.dart';
import 'package:shop_app/features/home/data/models/fav_models/add_or_delete_response.dart';
import 'package:shop_app/features/home/data/models/fav_models/favorites_model.dart';
import 'package:shop_app/features/home/data/models/home_model.dart';
import 'package:shop_app/features/home/data/models/logout_model.dart';

part 'home_web_services.g.dart';

@RestApi(baseUrl: "https://student.valuxapps.com/api/")
abstract class HomeWebServices {
  factory HomeWebServices(Dio dio, {String baseUrl}) = _HomeWebServices;

  @GET("profile")
  Future<RespondModel> checkLogin(
      @Header('Content-Type') String contentType,
      @Header('lang') String lang,
      @Header('Authorization') String authorization);

  @GET("home")
  Future<HomeModel> getHomeData(
      @Header('Content-Type') String contentType,
      @Header('lang') String lang,
      @Header('Authorization') String authorization);

  @POST('favorites')
  Future<AddOrDeleteResponse> addOrDeleteFav(
      @Body() AddOrDeleteBody addOrDeleteBody,
      @Header('Content-Type') String contentType,
      @Header('lang') String lang,
      @Header('Authorization') String authorization);

  @GET('favorites')
  Future<FavoriteModel> getAllFav(
      @Header('Content-Type') String contentType,
      @Header('lang') String lang,
      @Header('Authorization') String authorization);

  @GET('categories')
  Future<CategoryModel> getCategory(@Header('lang') String lang);

  @POST('logout')
 Future<LogoutModel> logout(
      @Header('Content-Type') String contentType,
      @Header('lang') String lang,
      @Header('Authorization') String authorization,);
}
