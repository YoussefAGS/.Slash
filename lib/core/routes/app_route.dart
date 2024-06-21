import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/core/routes/basi_route.dart';
import 'package:slash/core/utils/underplid.dart';
import 'package:slash/features/home_layout/presntation/view/Screens/home.dart';

import '../../features/home_layout/presntation/bloc_logic/product_cupit/product_bloc.dart';
import '../di/injection_container.dart';

class AppRoute {
  static const String homeLayout = "HomeLayout";

  static Route<void> routes(RouteSettings routeSettings) {
    // final argu= routeSettings.arguments;
    switch (routeSettings.name) {
      case homeLayout:
        return BaseRoute(
            page: BlocProvider(
                create: (context) => sl<ProductBloc>()..add(GetProductsEvent()),
                child: HomeLayout()));

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
