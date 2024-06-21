// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:slash/features/home_layout/data/models/drawer_item_model.dart';
//
// class InActiveDrawerItem extends StatelessWidget {
//   const InActiveDrawerItem({
//     super.key,
//     required this.drawerItemModel,
//   });
//
//   final DrawerItemModel drawerItemModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: SvgPicture.asset(drawerItemModel.image),
//       title: FittedBox(
//         alignment: AlignmentDirectional.centerStart,
//         fit: BoxFit.scaleDown,
//         child: Text(
//           drawerItemModel.title,
//         ),
//       ),
//     );
//   }
// }
//
// class ActiveDrawerItem extends StatelessWidget {
//   const ActiveDrawerItem({
//     super.key,
//     required this.drawerItemModel,
//   });
//
//   final DrawerItemModel drawerItemModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: SvgPicture.asset(drawerItemModel.image),
//       title: Text(
//         drawerItemModel.title,
//       ),
//       trailing: Container(
//         width: 3.27,
//         decoration: const BoxDecoration(color: Colors.grey),
//       ),
//     );
//   }
// }
