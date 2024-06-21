import 'package:flutter/material.dart';
import 'package:slash/core/app/app_strings.dart';
import 'package:slash/core/style/images/app_images.dart';
import 'dart:math';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  CustomBottomNavBar({super.key, required this.currentIndex, required this.onTap});
  List<String> listOfLabels = [
    AppStrings.home,
    AppStrings.favorite,
    AppStrings.cart,
    AppStrings.profile,
  ];
  List<String> listOfIcons = [
    AppImages.home,
    AppImages.heart,
    AppImages.shopping_cart,
    AppImages.profile,
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: min(size.height, size.width) * .16,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: size.width * .024),
        itemBuilder: (context, index) => InkWell(
          onTap: ()=> onTap(index),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    bottom: index == currentIndex ? 0 : size.width * .029,
                    right: size.width * .0422,
                    left: size.width * .0422,
                  ),
                  width: size.width * .16,
                  height: index == currentIndex ? size.width * .014 : 0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 2,),
                ImageIcon(
                  AssetImage(listOfIcons[index]),
                  size: 30,
                  color: index == currentIndex
                      ? Colors.black
                      : Colors.grey,
                ),
                Text(
                  listOfLabels[index],
                  style: TextStyle(
                    color: index == currentIndex
                        ? Colors.black
                        : Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
