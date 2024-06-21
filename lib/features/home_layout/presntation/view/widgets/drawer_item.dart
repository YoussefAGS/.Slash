import 'package:flutter/material.dart';

import '../../../data/models/drawer_item_model.dart';


class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isActive ? Colors.grey[200] : Colors.transparent,
      child: Row(
        children: [
          Image.asset(
            drawerItemModel.image,
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 16),
          Text(
            drawerItemModel.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              color: isActive ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}