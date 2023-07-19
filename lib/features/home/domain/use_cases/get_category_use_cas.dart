import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/features/home/data/models/category_model.dart';
import 'package:shop_app/features/home/domain/repositories/home_repo.dart';

class GetCategory{
  HomeRepository homeRepository;
  GetCategory({required this.homeRepository});
  Future<ApiResult<CategoryModel>> call(String lang) async{
    return await homeRepository.getAllCategory(lang);
  }
}