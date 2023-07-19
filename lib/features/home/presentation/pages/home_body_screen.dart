import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/home/presentation/manager/home_screen_manager/home_cubit.dart';
import 'package:shop_app/features/home/presentation/widgets/error_state_widget.dart';
import 'package:shop_app/features/home/presentation/widgets/home_body_widgets/main_home_body.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return state.when(initial: () {
        return const Center(child: CircularProgressIndicator());
      }, loaded: (respond) {
        return LoadedState(
          homeModel: respond,
        );
      }, onError: (errorMessage) {
        return ErrorBody(
          errorMessage: errorMessage,
        );
      }, reload: ( respond) {
        return LoadedState(
          homeModel: respond,
        );
      });
    });
  }
}
