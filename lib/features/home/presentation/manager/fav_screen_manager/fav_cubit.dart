import 'package:bloc/bloc.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/home/data/models/fav_models/favorites_model.dart';
import 'package:shop_app/features/home/presentation/manager/home_screen_manager/home_cubit.dart';

part 'fav_state.dart';

class FavCubit extends Cubit<FavState> {
  FavCubit()
      : super(FavInitial());


  loadFav() {
    emit(FavLoad(favoriteModel: getIt<HomeCubit>().allFavItems));
  }

  addOrDeleteFavItem(ItemData itemData) async {
    getIt<HomeCubit>().allFavItems.data!.data!.remove(itemData);
    emit(FavLoad(favoriteModel: getIt<HomeCubit>().allFavItems));
    bool result =
        await getIt<HomeCubit>().addOrRemoveFav(itemData.product!.id!.toInt());
    if(!result){
      getIt<HomeCubit>().allFavItems.data!.data!.add(itemData);
      emit(FavLoad(favoriteModel: getIt<HomeCubit>().allFavItems));
    }

  }
}
