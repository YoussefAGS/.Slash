import 'package:flutter/material.dart';
import 'package:slash/features/home_layout/data/models/drawer_item_model.dart';

import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  final List<DrawerItemModel> items;

  const DrawerItemsListView({
    super.key,
    required this.items,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: widget.items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
