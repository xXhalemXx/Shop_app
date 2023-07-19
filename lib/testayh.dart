import 'package:dio/dio.dart';
import 'package:shop_app/features/home/data/data_sources/home_web_services.dart';
import 'package:shop_app/features/home/data/models/category_model.dart';
import 'package:shop_app/features/home/data/models/fav_models/add_or_delete_body.dart';
import 'package:shop_app/features/home/data/models/fav_models/favorites_model.dart';
import 'package:shop_app/features/home/data/models/logout_model.dart';

main() async {
  HomeWebServices homeWebServices = HomeWebServices(Dio());

  try {
    LogoutModel logoutModel = await homeWebServices.logout(
        'application/json',
        'ar',
        'eSkiu3csRWMuv0ZFrVi9J7hox0gURbKEOOX8xsilNrHyeROxfetWQ6WPdi6EeNy5ePAzXl');
    print(logoutModel.status);
    print(logoutModel.message);
  } catch (e) {
    print(e);
  }
}

// AddOrDeleteBody addOrDeleteBody = AddOrDeleteBody(productId: 88);
// try {
//   homeWebServices
//       .addOrDeleteFav(addOrDeleteBody, 'application/json', 'en',
//           'kI2WwnwwcT0yLWUtfxg25wBFlEuFDHGWziBLIVBkRCpUoQCwY0sCgiUUJaW1JP1AL8rXee')
//       .then((value) {
//     print(value.message);
//     print(value.status);
//     print(value.data!.product!.id);
//   }).catchError((e) {
//     print(e);
//   });
// } catch (e) {
//   print(e);
// }
