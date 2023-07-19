part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loaded(HomeModel homeModel) = _Loaded;
  const factory HomeState.reload(HomeModel homeModel)=_Reload;
  const factory HomeState.onError(String errorMessage) = _OnError;
}
