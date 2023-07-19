import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/home/presentation/manager/home_screen_manager/home_cubit.dart';
import 'package:shop_app/features/home/presentation/manager/nav_bar_manager/navigation_bar_cubit.dart';
import 'package:shop_app/features/home/presentation/widgets/bottom_nav_bar/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.token});

  final String token;

  @override
  Widget build(BuildContext context) {
    getIt<HomeCubit>().checkUserValidity(context, token);
    return BlocBuilder<NavigationBarCubit, NavigationBarState>(
      builder: (context, state) {
        if (state is UpdateNavigationBar) {
          return Scaffold(
            appBar: state.index!=3? AppBar(
              title:
                  Text(getIt<NavigationBarCubit>().appBarTitles[state.index]),
            ):null,
            body: getIt<NavigationBarCubit>().homeScreenBody[state.index],
            bottomNavigationBar: homeNavBar(),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Home'),
            ),
            body: getIt<NavigationBarCubit>().homeScreenBody[0],
            bottomNavigationBar: homeNavBar(),
          );
        }
      },
    );
  }
}
