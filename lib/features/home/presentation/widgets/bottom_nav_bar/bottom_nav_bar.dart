import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/home/presentation/manager/nav_bar_manager/navigation_bar_cubit.dart';

 homeNavBar() {
  return BlocBuilder<NavigationBarCubit, NavigationBarState>(
    builder: (context, state) {
      return BottomNavigationBar(
        items: getIt<NavigationBarCubit>().iconsList,
        onTap: (index) {
          getIt<NavigationBarCubit>().navigateTo(index);
        },
        currentIndex: getIt<NavigationBarCubit>().currentIndex,
      );
    },
  );
}

//body