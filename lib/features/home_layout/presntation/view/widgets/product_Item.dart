
import 'package:flutter/material.dart';
import 'package:slash/features/home_layout/domain/entities/product_entity.dart';

import '../../../../../core/style/images/app_images.dart';

class ProductItem extends StatelessWidget {
  ProductItem({super.key, required this.product});

  ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius:
              BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage(
                    product.image),
                height: 116,
                width: 124,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                top: 6,
                right: 6,
                child: Image(
                    image:
                    AssetImage(AppImages.love))),
          ],
        ),
        Text(product.name),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            Text("EGP ${product.price}"),
            Image(
                image:
                AssetImage(AppImages.Ellipse_1)),
            Image(
                image:
                AssetImage(AppImages.addToCart)),
          ],
        )
      ],
    );
  }
}
