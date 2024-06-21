import 'package:flutter/material.dart';

import '../../../../../core/style/images/app_images.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              height: 47,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffE4E4E4),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search here',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon:
                  ImageIcon(AssetImage(AppImages.search_normal)),
                ),
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
              height: 47,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffE4E4E4),
              ),
              child: ImageIcon(
                  AssetImage(AppImages.Horizontal_Slider))),
        ],
      ),
    );
  }
}
