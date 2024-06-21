import 'package:flutter/material.dart';

import '../../../../../core/app/app_strings.dart';
import '../../../../../core/style/images/app_images.dart';
import '../../../data/models/drawer_item_model.dart';
import '../widgets/customappbare.dart';
import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  final double drawerWidth;

  const CustomDrawer({
    super.key,
    this.drawerWidth = 300.0,
  });

  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: AppStrings.home, image: AppImages.home),
    DrawerItemModel(title: AppStrings.favorite, image: AppImages.heart),
    DrawerItemModel(title: AppStrings.cart, image: AppImages.shopping_cart),
    DrawerItemModel(title: AppStrings.profile, image: AppImages.profile),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const  CustomAppBare(),
          const SizedBox(height: 8),
          Expanded(
            child: DrawerItemsListView(items: items),
          ),
        ],
      ),
    );
  }
}