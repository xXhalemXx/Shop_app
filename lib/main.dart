import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/core/styling/app_theme.dart';
import 'package:shop_app/features/home/presentation/manager/home_screen_manager/home_cubit.dart';
import 'package:shop_app/features/home/presentation/manager/nav_bar_manager/navigation_bar_cubit.dart';
import 'package:shop_app/features/home/presentation/pages/main_home_page.dart';
import 'package:shop_app/features/login/data/local/data_sources/cache_data.dart';
import 'package:shop_app/features/login/presentation/manager/login_manager/login_cubit.dart';
import 'package:shop_app/features/login/presentation/pages/login_page.dart';
import 'package:shop_app/features/login/presentation/pages/onboarding_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setupGetIt();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  late String token;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: mainWidget(),
    );
  }

  Widget mainWidget() {
    return FutureBuilder(
      future: witchRoutToGo(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          FlutterNativeSplash.remove();
          if (snapshot.data == 0) {
            return BlocProvider(
              create: (context) => getIt<LoginCubit>()..setupAnimation(),
              child: OnBoardingScreen(),
            );
          } else if (snapshot.data == 1) {
            return BlocProvider<LoginCubit>(
              create: (_) => getIt<LoginCubit>(),
              child: LoginPage(),
            );
          } else {
            return MultiBlocProvider(
                providers: [
                  BlocProvider<HomeCubit>(create: (_)=>getIt<HomeCubit>(),),
                  BlocProvider<NavigationBarCubit>(create: (_)=>getIt<NavigationBarCubit>(),),
                ],
                child: HomePage(
                  token: token,
                ),);
          }
        } else {
          return const SizedBox();
        }
      },
    );
  }

  Future<int> witchRoutToGo() async {
    bool? firstOpen = await getIt<CacheData>().getBool(key: 'firstOpen');
    String? shardToken = await getIt<CacheData>().getString(key: 'token');
     await getIt<LoginCubit>().setupAnimation();
    if (firstOpen == null || firstOpen == true) {
      return 0;
    } else if (shardToken == null || shardToken == '') {
      return 1;
    } else {
      token = shardToken;
      return 2;
    }

  }
}
