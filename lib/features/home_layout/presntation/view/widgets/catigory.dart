import 'package:flutter/material.dart';
import 'package:slash/features/home_layout/presntation/view/widgets/custom_sectionTitle.dart';

import '../../../../../core/style/images/app_images.dart';
import '../../../domain/entities/catigory_entity.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  List<CategoryEntity> category = [
    CategoryEntity(image: AppImages.Category1, title: "Fashion"),
    CategoryEntity(image: AppImages.Category2, title: "Games"),
    CategoryEntity(image: AppImages.Category3, title: "Accessories"),
    CategoryEntity(image: AppImages.Category4, title: "Books"),
    CategoryEntity(image: AppImages.Category5, title: "Artifacts"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSectionTitle(title: "Categories")   ,
        SizedBox(height: 10,),
        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
            itemBuilder: (context, index) => Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(category[index].image),
                          fit: BoxFit.fill)),
                ),
                Text(category[index].title)
              ],
            ),
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 10,
              );
            },
          ),
        )
      ],
    );
  }
}
