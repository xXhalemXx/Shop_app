import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/features/home/data/models/fav_models/add_or_delete_body.dart';
import 'package:shop_app/features/home/data/models/fav_models/add_or_delete_response.dart';
import 'package:shop_app/features/home/domain/repositories/home_repo.dart';

class AddOrDeleteFav {
  final HomeRepository homeRepository;

  AddOrDeleteFav({required this.homeRepository});

  Future<ApiResult<AddOrDeleteResponse>> call(
      AddOrDeleteBody addOrDeleteBody, String lang, String token) async {
    return await homeRepository.addOrDeleteFav(addOrDeleteBody, lang, token);
  }
}
