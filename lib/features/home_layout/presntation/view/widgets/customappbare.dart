import 'package:flutter/material.dart';
import 'package:slash/core/app/app_strings.dart';
import 'package:slash/core/style/images/app_images.dart';

class CustomAppBare extends StatelessWidget {
  const CustomAppBare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Slash",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImageIcon(AssetImage(AppImages.location),color: Colors.black,),
              Column(
                children: [
                  Text(AppStrings.location,style: TextStyle(color: Colors.black,fontSize: 14,),),
                  Text(AppStrings.city,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                ],
              ),
              ImageIcon(AssetImage(AppImages.arrowdown),color: Colors.black,),
            ],
          ),
          Stack(
            children: [
              ImageIcon(AssetImage(AppImages.notification),color: Colors.black,),
              Positioned(
                top: 0,
                right: 0,
                child: CircleAvatar(radius: 4,backgroundColor: Colors.red,),
              )
            ],
          )

        ],
      ),
    );
  }
}