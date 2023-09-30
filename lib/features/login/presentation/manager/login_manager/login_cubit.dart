import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/core/respond/general_api_respond/network_exceptions.dart';
import 'package:shop_app/core/respond/respond_model/login_model.dart';
import 'package:shop_app/features/home/presentation/manager/home_screen_manager/home_cubit.dart';
import 'package:shop_app/features/home/presentation/manager/nav_bar_manager/navigation_bar_cubit.dart';
import 'package:shop_app/features/home/presentation/pages/main_home_page.dart';
import 'package:shop_app/features/login/data/local/data_sources/cache_data.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/login_body_model.dart';
import 'package:shop_app/features/login/domain/use_cases/login_use_case.dart';
import 'package:shop_app/features/login/presentation/manager/login_manager/login_states.dart';
import 'package:rive/rive.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit({required this.loginUseCase,})
      : super(const LoginStates.initial());
  LoginUseCase loginUseCase;
  bool isPassword=true;

  void showORHidePassword(BuildContext context) {
    passwordFocusNode.nextFocus();
    isPassword=!isPassword;
    if(isPassword==false){
      addHandsDownController();
    }else{
      addHandsUpController();
    }
    emit(LoginStates.showOrHidePassword(isPassword));
  }

  void goInitial() {
    emit(const LoginStates.initial());
  }


  void login(
      BuildContext context, String lang, LoginBodyModel loginBodyModel) async {
    emit(const LoginStates.connecting());
    ApiResult<RespondModel> result = await loginUseCase(lang, loginBodyModel);
    result.when(success: (RespondModel respond) {
      if (respond.status!) {
        getIt<CacheData>()
            .setString(key: 'token', value: respond.data?.token ?? '');
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
              providers: [
                BlocProvider<HomeCubit>(
                  create: (_) => getIt<HomeCubit>(),
                ),
                BlocProvider<NavigationBarCubit>(
                  create: (_) => getIt<NavigationBarCubit>(),
                ),
              ],
              child: HomePage(
                token: respond.data?.token ?? '',
              ),
            ),
          ),
        );
      } else {
        emit(LoginStates.loginFail(respond.message!));
      }
    }, failure: (error) {
      emit(LoginStates.loginFail(
          NetworkExceptions.getDioExceptionMessage(error)));
    });
  }

  String? emailValidator(String? value) {
    final validCharacters = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value == null || value.isEmpty || value == '') {
      return 'You need to fill this field';
    } else if (!validCharacters.hasMatch(value)) {
      return 'Enter valid email address';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty || value == '') {
      return 'You need to fill this field';
    } else if (value.length < 6) {
      return 'Too short password';
    }
    return null;
  }




  // animation in login
  bool isLookingLeft = false;
  bool isLookingRight = false;
  final passwordFocusNode = FocusNode();
  Artboard? riveArtBoard;
  late RiveAnimationController controllerIdle;
  late RiveAnimationController controllerHandsUp;
  late RiveAnimationController controllerHandsDown;
  late RiveAnimationController controllerLookLeft;
  late RiveAnimationController controllerLookRight;
  late RiveAnimationController controllerSuccess;
  late RiveAnimationController controllerFail;


  setupAnimation(){
    controllerIdle = SimpleAnimation(AnimationEnum.idle.name);
    controllerHandsUp = SimpleAnimation(AnimationEnum.Hands_up.name);
    controllerHandsDown = SimpleAnimation(AnimationEnum.hands_down.name);
    controllerLookRight = SimpleAnimation(AnimationEnum.Look_down_right.name);
    controllerLookLeft = SimpleAnimation(AnimationEnum.Look_down_left.name);
    controllerSuccess = SimpleAnimation(AnimationEnum.success.name);
    controllerFail = SimpleAnimation(AnimationEnum.fail.name);

    rootBundle.load('assets/images/login_animation.riv').then((data) {
      final file = RiveFile.import(data);
      final artBoard = file.mainArtboard;
      artBoard.addController(controllerIdle);
        riveArtBoard = artBoard;
    });
    checkForPasswordFocusNodeToChangeAnimationState();
  }


  void removeAllControllers() {
    riveArtBoard?.artboard.removeController(controllerIdle);
    riveArtBoard?.artboard.removeController(controllerHandsUp);
    riveArtBoard?.artboard.removeController(controllerHandsDown);
    riveArtBoard?.artboard.removeController(controllerLookLeft);
    riveArtBoard?.artboard.removeController(controllerLookRight);
    riveArtBoard?.artboard.removeController(controllerSuccess);
    riveArtBoard?.artboard.removeController(controllerFail);
    isLookingLeft = false;
    isLookingRight = false;
  }

  void addIdleController() {
    removeAllControllers();
    riveArtBoard?.artboard.addController(controllerIdle);
    debugPrint("idle");
  }

  void addHandsUpController() {
    removeAllControllers();
    riveArtBoard?.artboard.addController(controllerHandsUp);
    debugPrint("hands up");
  }

  void addHandsDownController() {
    removeAllControllers();
    riveArtBoard?.artboard.addController(controllerHandsDown);
    debugPrint("hands down");
  }

  void addSuccessController() {
    removeAllControllers();
    riveArtBoard?.artboard.addController(controllerSuccess);
    debugPrint("Success");
  }

  void addFailController() {
    removeAllControllers();
    riveArtBoard?.artboard.addController(controllerFail);
    debugPrint("Fail");
  }

  void addLookRightController() {
    removeAllControllers();
    isLookingRight = true;
    riveArtBoard?.artboard.addController(controllerLookRight);
    debugPrint("Right");
  }

  void addLookLeftController() {
    removeAllControllers();
    isLookingLeft = true;
    riveArtBoard?.artboard.addController(controllerLookLeft);
    debugPrint("Left");
  }

  void checkForPasswordFocusNodeToChangeAnimationState() {
    passwordFocusNode.addListener(() {
      if (passwordFocusNode.hasFocus) {
        addHandsUpController();
      } else if (!passwordFocusNode.hasFocus) {
        addHandsDownController();
      }
    });
  }

  lookAtText (value) {
    if (value.isNotEmpty &&
        value.length < 11 &&
        !isLookingLeft) {
      addLookLeftController();
    } else if (value.isNotEmpty &&
        value.length > 11 &&
        !isLookingRight) {
      addLookRightController();
    }
  }


}
enum AnimationEnum {
  idle,
  Hands_up,
  hands_down,
  success,
  fail,
  Look_down_right,
  Look_down_left,
  look_idle
}