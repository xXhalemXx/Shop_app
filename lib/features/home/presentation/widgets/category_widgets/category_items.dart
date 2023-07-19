import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/features/home/data/models/category_model.dart';

class CategoryItems extends StatelessWidget {
  CategoryItems({Key? key, required this.categoryModel}) : super(key: key);
  CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
        itemCount: categoryModel.data!.data!.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => categoryItem(
            categoryModel.data!.data![index],
            screenWidth,
            screenHeight,
            context));
  }

  categoryItem(DataItem item, double screenWidth, double screenHeight,
      BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.25,
      width: screenWidth * 0.95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          categoryImage(item, screenWidth, screenHeight),
          GestureDetector(
              onTap: () {},
              child: const SizedBox(
                width: 10,
              )),
          AutoSizeText(
            item.name!,
            maxLines: 1,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }

  Widget categoryImage(DataItem item, double screenWidth, double screenHeight) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          SizedBox(
            width: screenWidth * 0.4,
            height: screenHeight * 0.25,
            child: Image(
              image: NetworkImage(item.image!),
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
