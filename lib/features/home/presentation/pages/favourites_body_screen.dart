import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/home/presentation/manager/fav_screen_manager/fav_cubit.dart';
import 'package:shop_app/features/home/presentation/widgets/error_state_widget.dart';
import 'package:shop_app/features/home/presentation/widgets/fav_widgets/fav_items.dart';

class FavouritesBody extends StatelessWidget {
  const FavouritesBody({super.key});

  @override
  Widget build(BuildContext context) {
    getIt<FavCubit>().loadFav();
    return BlocProvider<FavCubit>(
      create: (_) => getIt<FavCubit>(),
      child: BlocBuilder<FavCubit, FavState>(
        builder: (context, state) {
          if (state is FavInitial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is FavError) {
            return ErrorBody(errorMessage: state.errorMessage);
          } else if (state is FavLoad) {
            return FavItems(
              favoriteModel: state.favoriteModel,
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
