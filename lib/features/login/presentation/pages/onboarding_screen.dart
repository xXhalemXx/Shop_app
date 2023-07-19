import 'package:flutter/material.dart';
import 'package:shop_app/features/login/presentation/widgets/onboarding_widgets/onboarding_model.dart';
import 'package:shop_app/features/login/presentation/widgets/onboarding_widgets/onboarding_widgets.dart';


class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final List<OnBoardingModel> listOfValues = [
    const OnBoardingModel(
        onBoardingBody: '1st Screen body \n\n', onBoardingTitles: '1st Screen'),
    const OnBoardingModel(
        onBoardingBody: '2nd Screen body \n\n', onBoardingTitles: '2nd Screen'),
    const OnBoardingModel(
        onBoardingBody: '3rd Screen body \n\n', onBoardingTitles: '3rd Screen'),
  ];

  static PageController boardingController = PageController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: onBoardingAppBar(context),
      body: Center(
        child: SizedBox(
          width: screenWidth * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: screenHeight * 0.7,
                  child: buildViewCreator(screenHeight, listOfValues)),
              indicatorAnbButton(context, listOfValues),
            ],
          ),
        ),
      ),
    );
  }
}
