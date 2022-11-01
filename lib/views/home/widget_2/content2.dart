import 'dart:ui';

import 'package:app_sell_valtx/views/home/widget_2/barra.dart';
import 'package:app_sell_valtx/views/home/widget_2/transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Content2 extends StatelessWidget {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Mounthly limits",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        const Barra(),
        SizedBox(
          height: 25.0,
        ),
        Transactions(),
      ],
    );
  }
}
