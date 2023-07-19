import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/core/respond/general_api_respond/network_exceptions.dart';
import 'package:shop_app/features/home/data/models/category_model.dart';
import 'package:shop_app/features/home/domain/use_cases/get_category_use_cas.dart';

part 'category_state.dart';

part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({required this.getCategory})
      : super(const CategoryState.initial());

  GetCategory getCategory;
  String lang='en';

  CategoryModel categoryValues=CategoryModel();


  loadCategory() async{
    if(categoryValues.status==null){
      ApiResult<CategoryModel> respond =await getCategory(lang);
      respond.when(success: (response){
        categoryValues= response;
        emit(CategoryState.loaded(response));
      }, failure: (error){
        emit(CategoryState.error(NetworkExceptions.getDioExceptionMessage(error)));
      });
    }else{
      emit(CategoryState.loaded(categoryValues));
    }


  }
}
