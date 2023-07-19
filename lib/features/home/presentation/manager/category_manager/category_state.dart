part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loaded(CategoryModel categoryModel) = _Loaded;

  const factory CategoryState.error(String errorMessage) = _Error;

}

