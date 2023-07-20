import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shop_app/features/home/data/data_sources/home_web_services.dart';
import 'package:shop_app/features/home/data/repositories/home_repo_impl.dart';
import 'package:shop_app/features/home/domain/repositories/home_repo.dart';
import 'package:shop_app/features/home/domain/use_cases/add_or_delete_fav.dart';
import 'package:shop_app/features/home/domain/use_cases/check_login_use_case.dart';
import 'package:shop_app/features/home/domain/use_cases/get_all_fav.dart';
import 'package:shop_app/features/home/domain/use_cases/get_category_use_cas.dart';
import 'package:shop_app/features/home/domain/use_cases/get_home_data_use_case.dart';
import 'package:shop_app/features/home/domain/use_cases/logout_use_case.dart';
import 'package:shop_app/features/home/presentation/manager/category_manager/category_cubit.dart';
import 'package:shop_app/features/home/presentation/manager/fav_screen_manager/fav_cubit.dart';
import 'package:shop_app/features/home/presentation/manager/home_screen_manager/home_cubit.dart';
import 'package:shop_app/features/home/presentation/manager/nav_bar_manager/navigation_bar_cubit.dart';
import 'package:shop_app/features/login/data/local/data_sources/cache_data.dart';
import 'package:shop_app/features/login/data/remote/data_sources/web_services.dart';
import 'package:shop_app/features/login/data/repositories/login_reop_impl.dart';
import 'package:shop_app/features/login/domain/repositories/login_repo.dart';
import 'package:shop_app/features/login/domain/use_cases/login_use_case.dart';
import 'package:shop_app/features/login/domain/use_cases/register_use_case.dart';
import 'package:shop_app/features/login/presentation/manager/login_manager/login_cubit.dart';
import 'package:shop_app/features/login/presentation/manager/register_manager/register_cubit.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton<LoginCubit>(
      () => LoginCubit(loginUseCase: getIt()));
  getIt.registerLazySingleton<Register>(
      () => Register(loginRepository: getIt()));
  getIt.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(loginRepository: getIt()));
  getIt.registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(webServices: getIt()));
  getIt.registerLazySingleton<LoginWebServices>(() => LoginWebServices(Dio()));
  getIt.registerLazySingleton<CacheData>(() => CacheData());

  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(
      checkLogin: getIt(),
      getHomeData: getIt(),
      getAllFav: getIt(),
      addOrDeleteFav: getIt(),
      logout: getIt()));
  getIt.registerLazySingleton<Logout>(() => Logout(homeRepository: getIt()));
  getIt.registerLazySingleton<CheckLogin>(
      () => CheckLogin(homeRepository: getIt()));
  getIt.registerLazySingleton<GetHomeData>(
      () => GetHomeData(homeRepository: getIt()));
  getIt.registerLazySingleton<GetAllFav>(
      () => GetAllFav(homeRepository: getIt()));
  getIt.registerLazySingleton<AddOrDeleteFav>(
      () => AddOrDeleteFav(homeRepository: getIt()));
  getIt.registerLazySingleton<HomeRepository>(
      () => HomeRepositoriesIpm(homeWebServices: getIt()));
  getIt.registerLazySingleton<HomeWebServices>(() => HomeWebServices(Dio()));

  getIt.registerLazySingleton<NavigationBarCubit>(() => NavigationBarCubit());

  getIt.registerLazySingleton<CategoryCubit>(
      () => CategoryCubit(getCategory: getIt()));
  getIt.registerLazySingleton<GetCategory>(
      () => GetCategory(homeRepository: getIt()));

  getIt.registerLazySingleton<FavCubit>(() => FavCubit());

  getIt.registerLazySingleton<RegisterCubit>(
      () => RegisterCubit(register: getIt()));
}
