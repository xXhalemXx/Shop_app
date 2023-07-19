import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/core/constants/constants.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/home/data/models/home_model.dart';
import 'package:shop_app/features/home/presentation/manager/home_screen_manager/home_cubit.dart';

class GridItem extends StatelessWidget {
  const GridItem({Key? key, required this.index, required this.model})
      : super(key: key);
  final Products model;
  final int index;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gridPhoto(screenHeight),
          gridInfo(),
        ],
      ),
    );
  }

  Widget gridPhoto(double screenHeight) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Image(
            image: NetworkImage(
              model.image!,
            ),
            width: double.infinity,
            height: screenHeight * 0.25,
          ),
          if (model.discount != 0)
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

  Widget gridInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            model.name!,
            maxLines: 3,
            style: const TextStyle(
              height: 1.4,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 5.0,
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
                          '${model.price?.round()}',
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        if (model.discount != 0)
                          Text(
                            '${model.oldPrice?.round()}',
                            style: const TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                      ],
                    ),
                  ),
                  if (model.discount != 0)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${model.oldPrice!.round()}',
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
                          '${model.discount}%',
                        ),
                      ],
                    ),
                ],
              ),
              favButton(),
            ],
          )
        ],
      ),
    );
  }

  Widget favButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        onPressed: () {
          getIt<HomeCubit>().addOrRemoveFav(model.id!);
        },
        icon: Icon(
          heart,
          color: getIt<HomeCubit>().favItems[model.id!] == true
              ? Colors.red
              : Colors.grey,
        ),
      ),
    );
  }
}
