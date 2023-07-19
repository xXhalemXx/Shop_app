import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/core/constants/constants.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/home/presentation/manager/category_manager/category_cubit.dart';
import 'package:shop_app/features/home/presentation/manager/fav_screen_manager/fav_cubit.dart';
import 'package:shop_app/features/home/presentation/manager/home_screen_manager/home_cubit.dart';
import 'package:shop_app/features/home/presentation/pages/favourites_body_screen.dart';
import 'package:shop_app/features/home/presentation/pages/categories_body.dart';
import 'package:shop_app/features/home/presentation/pages/home_body_screen.dart';
import 'package:shop_app/features/home/presentation/pages/settings_body.dart';

part 'navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(NavigationBarInitial());

  int currentIndex = 0;

  List<BottomNavigationBarItem> iconsList = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Categories'),
    const BottomNavigationBarItem(icon: Icon(heart), label: 'Favourites'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.settings), label: 'Settings'),
  ];
  List<String> appBarTitles = [
    'Home',
    'Categories',
    'Favourites',
    'Settings',
  ];
  List<Widget> homeScreenBody = [
    const HomeBody(),
    const CategoryBody(),
    const FavouritesBody(),
    const SettingsBody(),
  ];

  navigateTo(int index) {
    if (currentIndex == 0 &&
        getIt<HomeCubit>().state == const HomeState.initial()) {
      // don't do any action
      return;
    }
    if (currentIndex == 1 &&
        getIt<CategoryCubit>().state == const CategoryState.initial()) {
      // don't do any action
      return;
    }

    // reset lazy singleton to avoid errors while navigating
    if (currentIndex == 2) {
      getIt.resetLazySingleton<FavCubit>();
    }

    currentIndex = index;
    emit(UpdateNavigationBar(index: index));
  }
}
