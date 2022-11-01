import 'package:app_sell_valtx/views/home/widget_2/header2.dart';
import 'package:app_sell_valtx/views/home/widget_2/transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/bottomNavBar.dart';
import 'content2.dart';

class HomeView2 extends StatelessWidget {
  const HomeView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.grey.withOpacity(0.05),
            child: Container(
              padding: const EdgeInsets.only(
                left: 17.0,
                right: 17.0,
              ),
              child: Column(
                children: [
                  Header2(),
                  SizedBox(
                    height: 25.0,
                  ),
                  Content2(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar());
  }
}
