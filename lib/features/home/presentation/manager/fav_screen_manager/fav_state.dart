part of 'fav_cubit.dart';

abstract class FavState {}

class FavInitial extends FavState {}

class FavError extends FavState {
  String errorMessage;

  FavError({required this.errorMessage});
}

class FavLoad extends FavState {
  FavoriteModel favoriteModel;

  FavLoad({required this.favoriteModel});
}

class FavReload extends FavState {
  FavoriteModel favoriteModel;

  FavReload({required this.favoriteModel});
}
