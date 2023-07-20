import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/core/styling/colors.dart';
import 'package:shop_app/features/login/data/local/data_sources/cache_data.dart';
import 'package:shop_app/features/login/presentation/manager/login_manager/login_cubit.dart';
import 'package:shop_app/features/login/presentation/pages/login_page.dart';
import 'package:shop_app/features/login/presentation/pages/onboarding_screen.dart';
import 'package:shop_app/features/login/presentation/widgets/onboarding_widgets/onboarding_model.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

AppBar onBoardingAppBar(BuildContext context) {
  return AppBar(
    actions: [
      TextButton(
          onPressed: () {
            pushToLogin(context);
          },
          child: Text(
            'SKIP',
            style: TextStyle(color: secLightColor),
          ))
    ],
  );
}

Widget buildViewCreator(
    double screenHeight, List<OnBoardingModel> listOfValues) {
  return PageView.builder(
      controller: OnBoardingScreen.boardingController,
      itemCount: listOfValues.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return onBoardItem(screenHeight, listOfValues[index], context);
      });
}

Widget onBoardItem(
    double screenHeight, OnBoardingModel boardingValue, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Expanded(
        child: Image(image: AssetImage('assets/images/online-shopping.png')),
      ),
      Text(
        boardingValue.onBoardingTitles,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      SizedBox(
        height: screenHeight * 0.01,
      ),
      Text(
        boardingValue.onBoardingBody,
        style: Theme.of(context).textTheme.bodyLarge,
      )
    ],
  );
}

Widget indicatorAnbButton(
    BuildContext context, List<OnBoardingModel> listOfValues) {
  return Row(
    children: [
      SmoothPageIndicator(
        controller: OnBoardingScreen.boardingController,
        count: listOfValues.length,
        effect: ExpandingDotsEffect(
          activeDotColor: secLightColor!,
        ),
      ),
      const Spacer(),
      FloatingActionButton(
        onPressed: () {
          if (OnBoardingScreen.boardingController.page!.ceil() ==
              listOfValues.length - 1) {
            pushToLogin(context);
          } else {
            OnBoardingScreen.boardingController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastEaseInToSlowEaseOut);
          }
        },
        child: const Icon(Icons.arrow_forward),
      ),
    ],
  );
}

void pushToLogin(BuildContext context) async{
  await getIt<CacheData>().setBool(key: 'firstOpen', value: false);
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => BlocProvider<LoginCubit>(
        create: (_) => getIt<LoginCubit>(),
        child: LoginPage(),
      ),
    ),
  );
}
