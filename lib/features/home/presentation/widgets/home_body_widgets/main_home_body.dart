import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/core/common_components/default_components.dart';
import 'package:shop_app/features/home/data/models/home_model.dart';
import 'package:shop_app/features/home/presentation/widgets/home_body_widgets/grid_items.dart';

class LoadedState extends StatelessWidget {
  const LoadedState({super.key, required this.homeModel});

  final HomeModel homeModel;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          homeSlider(screenWidth, screenHeight),
          addVerticalSpace(10),
          Container(
            color: Colors.grey[300],
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0,
              childAspectRatio: 1 / 1.8,
              children: List.generate(
                homeModel.data!.products!.length,
                (index) => GridItem(index: index, model: homeModel.data!.products![index]),
              ),
            ),
          )
        ],
      ),
    );
  }

  CarouselSlider homeSlider(double screenWidth, double screenHeight) {
    return CarouselSlider(
      items: homeModel.data!.banners!.map((entity) {
        return Image(
          image: NetworkImage(entity.image!),
          fit: BoxFit.fill,
          width: screenWidth,
        );
      }).toList(),
      options: CarouselOptions(
        height: screenHeight * 0.25,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
    );
  }



}
