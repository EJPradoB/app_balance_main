import 'package:flutter/material.dart';
import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';

class BottomNavBar extends StatelessWidget {
  List<Color> colores = [
    const Color.fromRGBO(159, 99, 84, 1.0),
    const Color.fromRGBO(70, 131, 126, 1.0),
  ];

  BottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: Stack(children: [
        BottomBarWithSheet(
          bottomBarMainAxisAlignment: MainAxisAlignment.spaceBetween,
          controller: null,
          bottomBarTheme: const BottomBarTheme(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            selectedItemIconColor: Color.fromARGB(255, 55, 170, 143),
            itemIconSize: 25,
          ),
          items: const [
            BottomBarWithSheetItem(icon: Icons.house_sharp, label: "."),
            BottomBarWithSheetItem(icon: Icons.bar_chart),
            BottomBarWithSheetItem(icon: Icons.photo_camera),
            BottomBarWithSheetItem(icon: Icons.person_add_outlined),
          ],
        ),
        Center(
          heightFactor: 1.2,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 224, 224, 224),
                    spreadRadius: 5,
                    blurRadius: 1,
                  ),
                ],
                gradient: RadialGradient(
                  colors: colores,
                  center: Alignment.bottomRight,
                  radius: 0.8,
                )),
            child: Icon(Icons.add),
          ),
        )
      ]),
    );
  }
}
