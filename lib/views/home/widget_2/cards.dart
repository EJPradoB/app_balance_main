import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

Path customPath = Path()
  ..moveTo(20, 20)
  ..lineTo(50, 100)
  ..lineTo(20, 200)
  ..lineTo(100, 100)
  ..lineTo(20, 20);

class CardsView2 extends StatelessWidget {
  List<Color> colores = [
    const Color.fromRGBO(159, 99, 84, 1.0),
    const Color.fromRGBO(70, 131, 126, 1.0),
  ];
  List<Color> colores2 = [
    const Color.fromARGB(143, 206, 204, 204),
    Color.fromARGB(255, 235, 232, 232),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 1, right: 10),
            child: DottedBorder(
              color: Colors.grey,
              strokeWidth: 1,
              borderType: BorderType.RRect,
              dashPattern: [15, 15],
              radius: Radius.circular(15),
              child: Container(
                width: 40,
                height: 257,
                color: Colors.transparent,
                child: Center(
                  child: Icon(
                    Icons.add_box_outlined,
                    color: Color.fromARGB(255, 53, 141, 115),
                  ),
                ),
              ),
            ),
          ),
          Container(),
          cardVisa(
              Monto: "4.664,63",
              typeCard: "VISA",
              medideCard: "X-Card",
              colores: colores,
              width_: 205.0,
              height_: 260.0,
              colorsText: Colors.white),
          cardVisa(
              Monto: "4.664,63",
              typeCard: "VISA",
              medideCard: "X-Card",
              colores: colores2,
              width_: 205.0,
              height_: 230.0,
              colorsText: Colors.black),
        ],
      ),
    );
  }

  //     width: 205.0,
  //     height: 280.0,

  Container cardVisa({
    required String medideCard,
    required String typeCard,
    required Color colorsText,
    required String Monto,
    required List<Color> colores,
    required double width_,
    required double height_,
  }) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0),
      width: width_,
      height: height_,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: colores,
          center: Alignment.bottomRight,
          radius: 0.8,
        ),
        borderRadius: BorderRadius.circular(20.0),
        // image: const DecorationImage(
        //     image: AssetImage("assets/Imagenes/figma.jpeg"),
        //     fit: BoxFit.cover
        //     ),
      ),
      child: Container(
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 25.0, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(medideCard,
                    style: TextStyle(
                        color: colorsText.withOpacity(0.9), fontSize: 14)),
                Text(
                  typeCard,
                  style: TextStyle(color: colorsText, fontSize: 20.0),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Balance",
                        style: TextStyle(
                            color: colorsText.withOpacity(0.5),
                            fontSize: 15.5)),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("\$$Monto",
                        style: TextStyle(color: colorsText, fontSize: 25.0))
                  ],
                ),
                SizedBox()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("**** 2468",
                    style: TextStyle(
                      color: colorsText.withOpacity(0.6),
                      fontSize: 18.0,
                    )),
                Text("12/24",
                    style: TextStyle(
                      color: colorsText.withOpacity(0.9),
                      fontSize: 15.0,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
