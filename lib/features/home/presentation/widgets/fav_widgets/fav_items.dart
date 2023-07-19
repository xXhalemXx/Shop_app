import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/core/constants/constants.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/home/data/models/fav_models/favorites_model.dart';
import 'package:shop_app/features/home/presentation/manager/fav_screen_manager/fav_cubit.dart';

class FavItems extends StatelessWidget {
  FavItems({Key? key, required this.favoriteModel}) : super(key: key);
  FavoriteModel favoriteModel;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: favoriteModel.data!.data!.length,
        itemBuilder: (context, index) {
          return favItem(favoriteModel.data!.data![index], screenHeight,screenWidth);
        });
  }

  Widget favItem(ItemData itemData, double screenHeight,double screenWidth ) {
    return Row(
      children: [
        favImage(itemData, screenHeight,screenWidth),
        favItemInfo(itemData,screenHeight,screenWidth)

      ],
    );
  }

  favImage(ItemData itemData, double screenHeight,double screenWidth) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          SizedBox(
            width: screenWidth*0.5,
            height: screenHeight * 0.25,
            child: Image(
              image: NetworkImage(
                itemData.product!.image!,
              ),
              fit: BoxFit.contain,

            ),
          ),
          if (itemData.product!.discount != 0)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              color: Colors.red,
              child: const Text(
                'discount',
                style: TextStyle(color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }

  Widget favItemInfo(ItemData itemData,double screenHeight,double screenWidth) {
    return SizedBox(
      width: screenWidth*0.5,
      height: screenHeight*0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            itemData.product!.name!,
            maxLines: 3,
            style: const TextStyle(
              height: 1.4,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Text(
                          '${itemData.product!.price?.round()}',
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        if (itemData.product!.discount != 0)
                          Text(
                            '${itemData.product!.oldPrice?.round()}',
                            style: const TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                      ],
                    ),
                  ),
                  if (itemData.product!.discount != 0)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${itemData.product!.oldPrice!.round()}',
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                          ),
                          child: Container(
                            width: 1.0,
                            height: 10.0,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '${itemData.product!.discount}%',
                        ),
                      ],
                    ),
                ],
              ),
              favButton(itemData),
            ],
          )
        ],
      ),
    );
  }
  Widget favButton(ItemData itemData) {
    return Align(
      alignment: Alignment.bottomRight,
      child: IconButton(
        onPressed: () {
          getIt<FavCubit>().addOrDeleteFavItem(itemData);
        },
        icon: const Icon(
          heart,
          color: Colors.red,
        ),
      ),
    );
  }

}
