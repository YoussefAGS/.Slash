import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/customappbare.dart';
import '../widgets/search_siction.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
                //         CustomAppBare(),
                //         SizedBox(
                //           height: 40,
                //         ),
                //         FeatureBookListViewBlocBuilder(),
                //         Padding(
                //           padding: EdgeInsets.only(top: 40, bottom: 20),
                //           child: Text(
                //             'Best Seller',
                //             style: Styles.textStyle18,
                //           ),
                //         ),
                //       ],
                //     )
                // ),
                // const SliverFillRemaining(child: BestSellerListViewBlocBuilder()),
              ],
            ),
          )
        ]));
  }
}
