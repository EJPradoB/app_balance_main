import 'package:app_sell_valtx/views/home/widget_2/home_view2.dart';
import 'package:app_sell_valtx/views/home/widgets/app_bottom_navigation.dart';
import 'package:app_sell_valtx/views/home/widgets/content.dart';
import 'package:app_sell_valtx/views/home/widgets/header.dart';
import 'package:app_sell_valtx/views/home/widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';

import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(),
            child: Container(
              color: Colors.grey.withOpacity(0.05),
              padding: const EdgeInsets.only(
                left: 7.0,
                right: 7.0,
              ),
              child: Column(
                children: [
                  Header(),
                  const SizedBox(
                    height: 23.0,
                  ),
                  Content(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar()
        // bottomNavigationBar: bottomBarNav(),
        );
  }

  // BottomBarWithSheet bottomBarNav() {
  //   return BottomBarWithSheet(
  //     controller: null,
  //     bottomBarTheme: BottomBarTheme(
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //       ),
  //       selectedItemIconColor: Colors.amber,
  //       itemIconSize: 25,
  //     ),
  //     items: const [
  //       BottomBarWithSheetItem(icon: Icons.house_sharp, label: "."),
  //       BottomBarWithSheetItem(icon: Icons.bar_chart),
  //       BottomBarWithSheetItem(icon: Icons.photo_camera),
  //       BottomBarWithSheetItem(icon: Icons.person_add_outlined),
  //     ],
  //   );
  // }
}
