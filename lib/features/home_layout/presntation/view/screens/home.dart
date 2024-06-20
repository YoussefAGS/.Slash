import 'package:flutter/material.dart';
import 'package:slash/core/extensions/context_extension.dart';
import 'package:slash/core/style/images/app_images.dart';
import 'package:slash/core/utils/adaptive_layout_widget.dart';
import 'package:slash/core/utils/size_config.dart';
import 'package:slash/features/home_layout/presntation/view/mobile_view/home_moblie.dart';
import 'package:slash/features/home_layout/presntation/view/web_view/custom_drawer.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return HomeMobile();
  }
}
