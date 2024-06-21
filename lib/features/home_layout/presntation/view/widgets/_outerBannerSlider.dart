import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../core/style/images/app_images.dart';

class OuterBannerSlider extends StatefulWidget {
  const OuterBannerSlider({super.key});

  @override
  State<OuterBannerSlider> createState() => _OuterBannerSliderState();
}

class _OuterBannerSliderState extends State<OuterBannerSlider> {
  CarouselController buttonCarouselController = CarouselController();

  List<String> imageList = [
    AppImages.slider,
    AppImages.slider,
    AppImages.slider
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: buttonCarouselController,

          /// It's options
          options: CarouselOptions(
            height: 132,
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            aspectRatio: 327 / 132,
            viewportFraction: 0.95,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),

          /// Items
          items: imageList.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                /// Custom Image Viewer widget
                return Container(
                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(imagePath,fit: BoxFit.fill,)),
                );

              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 10,
        ),

        /// Indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            imageList.length,
            (index) {
              bool isSelected = _currentIndex == index;
              return GestureDetector(
                onTap: () {
                  buttonCarouselController.animateToPage(index);
                },
                child: AnimatedContainer(
                  width: isSelected ? 30 : 10,
                  height: 10,
                  margin: EdgeInsets.symmetric(horizontal: isSelected ? 6 : 3),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.black : Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(
                      40,
                    ),
                  ),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
