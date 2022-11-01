import 'package:app_sell_valtx/views/home/widgets/header_appbar.dart';
import 'package:app_sell_valtx/views/home/widgets/operations.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  List<Color> colores = [
    const Color.fromRGBO(159, 99, 84, 1.0),
    const Color.fromRGBO(70, 131, 126, 1.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 345.0,
      padding: const EdgeInsets.only(
        top: 35.0,
        left: 30.0,
        right: 30.0,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35.0),
            bottomRight: Radius.circular(35.0),
          ),
          gradient: RadialGradient(
            colors: colores,
            center: Alignment.bottomRight,
            radius: 0.8,
          )),
      child: Column(
        children: const [
          HeaderAppbar(),
          SizedBox(height: 50.0),
          Text(
            "Your Balance",
            style: TextStyle(
                fontSize: 17.0,
                color: Color.fromARGB(255, 241, 240, 240),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.0),
          Text(
            "\$7.664,63",
            style: TextStyle(
              fontSize: 35.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30.0),
          Operations(),
        ],
      ),
    );
  }
}
