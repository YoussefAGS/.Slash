import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/features/home_layout/presntation/view/widgets/catigory.dart';

import '../widgets/_outerBannerSlider.dart';
import '../widgets/customappbare.dart';
import '../widgets/product_list.dart';
import '../widgets/search_siction.dart';

class HomePageMobile extends StatefulWidget {
  HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 40, right: 0, left: 25),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBare(),
                SizedBox(
                  height: 40,
                ),
                Search(),
                SizedBox(
                  height: 40,
                ),
                OuterBannerSlider(),
                SizedBox(
                  height: 40,
                ),
                Categories(),
                SizedBox(
                  height: 40,
                ),
                CustomProductList(title: "Best Selling"),
                SizedBox(
                  height: 5,
                ),
                CustomProductList(title: "New Arrival"),
                SizedBox(
                  height: 5,
                ),
                CustomProductList(title: "Recommended for you"),
              ],
            ),
          )
        ]));
  }
}
