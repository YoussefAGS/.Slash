
import 'package:flutter/cupertino.dart';
import '../widgets/_outerBannerSlider.dart';
import '../widgets/catigory.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/product_list.dart';
import '../widgets/search_siction.dart';

class HomeWebBody extends StatelessWidget {
  const HomeWebBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(child: CustomDrawer() ,flex:(width < 1200)? 2 : 1,),
        Expanded(flex: (width < 1200)? 4 : 3,
          child:CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
          ]),

        ),
      ],

    );
  }
}
