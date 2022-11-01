import 'package:app_sell_valtx/views/home/widget_2/app_bottom_navigation2.dart';

import 'package:app_sell_valtx/views/home/widget_2/cards.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cards.dart';

class Header2 extends StatelessWidget {
  const Header2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          HeaderAppBar(),
          SizedBox(
            height: 25,
          ),
          CardsView2()
        ],
      ),
    );
  }
}
