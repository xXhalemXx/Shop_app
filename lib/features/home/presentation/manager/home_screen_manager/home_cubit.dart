import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/core/common_components/default_components.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/core/respond/general_api_respond/network_exceptions.dart';
import 'package:shop_app/core/respond/respond_model/login_model.dart';
import 'package:shop_app/features/home/data/models/fav_models/add_or_delete_body.dart';
import 'package:shop_app/features/home/data/models/fav_models/add_or_delete_response.dart';
import 'package:shop_app/features/home/data/models/fav_models/favorites_model.dart';
import 'package:shop_app/features/home/data/models/home_model.dart';
import 'package:shop_app/features/home/data/models/logout_model.dart';
import 'package:shop_app/features/home/domain/use_cases/add_or_delete_fav.dart';
import 'package:shop_app/features/home/domain/use_cases/check_login_use_case.dart';
import 'package:shop_app/features/home/domain/use_cases/get_all_fav.dart';
import 'package:shop_app/features/home/domain/use_cases/get_home_data_use_case.dart';
import 'package:shop_app/features/home/domain/use_cases/logout_use_case.dart';
import 'package:shop_app/features/home/presentation/manager/category_manager/category_cubit.dart';
import 'package:shop_app/features/home/presentation/manager/fav_screen_manager/fav_cubit.dart';
import 'package:shop_app/features/home/presentation/manager/nav_bar_manager/navigation_bar_cubit.dart';
import 'package:shop_app/features/login/data/local/data_sources/cache_data.dart';
import 'package:shop_app/features/login/presentation/manager/login_manager/login_cubit.dart';
import 'package:shop_app/features/login/presentation/manager/register_manager/register_cubit.dart';
import 'package:shop_app/features/login/presentation/pages/login_page.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
      {required this.checkLogin,
      required this.getHomeData,
      required this.getAllFav,
      required this.addOrDeleteFav,
      required this.logout})
      : super(const HomeState.initial());

  // use cases to fetch data from server
  CheckLogin checkLogin;
  GetAllFav getAllFav;
  GetHomeData getHomeData;
  AddOrDeleteFav addOrDeleteFav;
  Logout logout;

  // some constant values used use cases
  final String lang = 'en';
  String userToken = '';

  // variables used to save data from server
  Map<num, bool> favItems = {}; // used to determine color of heart icon
  HomeModel allItemsData = HomeModel(); // used to reload ui
  FavoriteModel allFavItems = FavoriteModel();
  RespondModel userData=RespondModel();

  checkUserValidity(BuildContext context, String token) {
    checkLogin(lang, token).then((value) {
      value.when(success: (respond) {
        if (respond.status!) {
          userData=respond;
          userToken = token;
          validToken(token);
        } else {
          notValidToken(context);
        }
      }, failure: (error) {
        emit(
            HomeState.onError(NetworkExceptions.getDioExceptionMessage(error)));
      });
    });
  }

  notValidToken(BuildContext context) {
    getIt.resetLazySingleton<LoginCubit>();
    getIt<CacheData>().setString(key: 'token', value: '');
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider<LoginCubit>(
                  create: (_) => getIt<LoginCubit>(),
                  child: LoginPage(),
                )));
    defaultErrorToast(message: 'Login session expired');
  }

  validToken(String token) {
    getHomeData(lang, token).then((value) async {
      value.when(success: (respond) async {
        // fill map with all items with initial  value  false
        for (var element in respond.data!.products!) {
          favItems.addAll({element.id!: false});
        }
        // gat fav items
        ApiResult<FavoriteModel> result = await getAllFav(lang, token);
        result.when(success: (respond) {
          allFavItems = respond;
          // change initial value to true
          for (var element in respond.data!.data!) {
            favItems[element.product!.id!] = true;
          }
        }, failure: (error) {
          emit(HomeState.onError(
              NetworkExceptions.getDioExceptionMessage(error)));
          return;
        });
        allItemsData = respond;
        emit(HomeState.loaded(respond));
      }, failure: (error) {
        emit(
            HomeState.onError(NetworkExceptions.getDioExceptionMessage(error)));
      });
    });
  }

 Future<bool> addOrRemoveFav(int itemId) async {
    favItems[itemId] = !favItems[itemId]!;
    emit(HomeState.reload(allItemsData));
    emit(HomeState.loaded(allItemsData));
    AddOrDeleteBody addOrDeleteBody = AddOrDeleteBody(productId: itemId);
    ApiResult<AddOrDeleteResponse> respond =
        await addOrDeleteFav(addOrDeleteBody, lang, userToken);
    respond.when(success: (respond) {
      if (respond.status == false) {
        favItems[itemId] = !favItems[itemId]!;
        defaultErrorToast(message: 'can\'t modify favorites right now');
        emit(HomeState.reload(allItemsData));
        emit(HomeState.loaded(allItemsData));
        return  false;
      }
      updateFavList();
      getIt<FavCubit>().loadFav();
      return true;
    }, failure: (error) {
      defaultErrorToast(message: 'can\'t modify favorites right now');
      return  false;
    });
    return true;
  }

  updateFavList() async{
    ApiResult<FavoriteModel> favoriteModel =await getAllFav(lang,userToken);
    favoriteModel.when(success: (response){
      allFavItems=response;
    }, failure: (error){
      defaultErrorToast(message: 'can\'t modify favorites right now');
      return  false;
    });
  }

  userLogout(BuildContext context) async{
    ApiResult<LogoutModel> logoutModel =await logout(lang,userToken);
    logoutModel.when(success: (response) async{
     if(response.status!){
       getIt<CacheData>().setString(key: 'token', value: '');
       getIt.resetLazySingleton<LoginCubit>();
       getIt.resetLazySingleton<HomeCubit>();
       getIt.resetLazySingleton<NavigationBarCubit>();
       getIt.resetLazySingleton<FavCubit>();
       getIt.resetLazySingleton<CategoryCubit>();
       getIt.resetLazySingleton<RegisterCubit>();
       Navigator.pushReplacement(
           context,
           MaterialPageRoute(
               builder: (_) => BlocProvider<LoginCubit>(
                 create: (_) => getIt<LoginCubit>(),
                 child: LoginPage(),
               )));
     }else{
       defaultErrorToast(message: 'can\'t logout right now');
     }
    }, failure: (error){
      defaultErrorToast(message: 'can\'t logout right now');
    });
  }
}
