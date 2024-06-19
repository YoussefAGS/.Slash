// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../di/injection_container.dart';
//
// class AppRoute {
//   static const String login = "login";
//   static const String signUp = "signUp";
//   static const String AdminHome = "AdminHome";
//   static const String customer = "customer_home";
//
//
//
//   static Route<void> routes(RouteSettings routeSettings) {
//     // final argu= routeSettings.arguments;
//     switch (routeSettings.name) {
//       case login:
//         return BaseRoute(page: BlocProvider(
//           create: (context) => sl<AuthBloc>(),
//           child: Login(),
//         ));
//       case signUp:
//         return BaseRoute(page: const SignUp());
//       case AdminHome:
//         return BaseRoute(page:  Admin());
//       case customer:
//         return BaseRoute(page:  customer_home());
//
//       default :
//         return BaseRoute(page: PageUnderBuildScreen());
//     }
//   }
// }