import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/home/presentation/manager/category_manager/category_cubit.dart';
import 'package:shop_app/features/home/presentation/widgets/category_widgets/category_items.dart';
import 'package:shop_app/features/home/presentation/widgets/error_state_widget.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    getIt<CategoryCubit>().loadCategory();
    return BlocProvider<CategoryCubit>(
      create: (_) => getIt(),
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          return state.when(initial: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, loaded: (category) {
            return CategoryItems(
              categoryModel: category,
            );
          }, error: (errorMessage) {
            return ErrorBody(
              errorMessage: errorMessage,
            );
          });
        },
      ),
    );
  }
}
