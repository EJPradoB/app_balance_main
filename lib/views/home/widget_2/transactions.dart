import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  Color color_green = Color.fromARGB(255, 53, 141, 115);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Transactions",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("See all",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(237, 123, 99, 1))),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                itemList(
                    nombreEmpresa: "Figma",
                    fecha: "February 1,2022",
                    monto: "433,00",
                    imgPaht: "assets/Imagenes/figma.jpeg",
                    activeBoxShadow: 0),
                itemList(
                    nombreEmpresa: "Netflix",
                    fecha: "February 1,2022",
                    monto: "4,00",
                    imgPaht: "assets/Imagenes/netflix.jpeg"),
                itemList(
                    nombreEmpresa: "Figma",
                    fecha: "February 1,2022",
                    monto: "4,00",
                    imgPaht: "assets/Imagenes/netflix.jpeg"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container itemList({
    required String nombreEmpresa,
    required String fecha,
    required String monto,
    required String imgPaht,
    int? activeBoxShadow,
  }) {
    return Container(
      margin: const EdgeInsets.only(
        top: 15.0,
      ),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
          bottom: Radius.circular(20),
        ),
        boxShadow: [
          if (activeBoxShadow == 1)
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), //color of shadow
              spreadRadius: 1, //spread radius
              blurRadius: 25, // blur radius
              offset: const Offset(0, 12), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),

          //you can set more BoxShadow() here
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(65),
            ),
            child: Image.asset(
              imgPaht.toString(),
              width: 45,
              height: 45,
            ),
          ),
          SizedBox(
            height: 70,
            width: 220,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      nombreEmpresa,
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(fecha.toString(),
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$$monto",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: color_green),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("!Suscription",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
