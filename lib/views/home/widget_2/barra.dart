import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Barra extends StatefulWidget {
  const Barra({Key? key}) : super(key: key);

  @override
  _BarraState createState() => _BarraState();
}

double _value = 40.0;
Color color_green = const Color.fromARGB(255, 53, 141, 115);

class _BarraState extends State<Barra> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 35.0),
              spreadRadius: -23.0,
              blurRadius: 45.0,
              color: Color.fromRGBO(200, 191, 191, 1),
            )
          ]),
      padding: const EdgeInsets.only(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 22.5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ammount: ${_value.round()}",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.9), fontSize: 16),
                ),
                const SizedBox(),
              ],
            ),
          ),
          SizedBox(
            height: 60.0,
            child: SfSlider(
              stepSize: 100.0,
              activeColor: color_green,
              min: 0.0,
              max: 15000,
              value: _value,
              interval: 15000,
              showTicks: true,
              showLabels: true,
              enableTooltip: true,
              minorTicksPerInterval: 1,
              onChanged: (dynamic value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
