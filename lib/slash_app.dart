

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:slash/core/routes/app_route.dart';
import 'package:slash/core/style/theme/app_theme.dart';

class SlashApp extends StatelessWidget {
  const SlashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: themeLight(),
      title: 'Slash App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute.routes,
      initialRoute: AppRoute.homeLayout,
    );
  }
}
