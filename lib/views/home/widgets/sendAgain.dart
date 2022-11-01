import 'package:flutter/material.dart';

class SendAgain extends StatelessWidget {
  const SendAgain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Send again",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  ),
                  const BoxShadow(
                      // color: Color.fromRGBO(255, 255, 255, 1),
                      // offset: Offset(-5, -5),
                      // blurRadius: 15,
                      // spreadRadius: 1
                      ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey.shade200,
                    Colors.grey.shade300,
                    Colors.grey.shade400,
                    Colors.grey.shade500,
                  ],
                ),
              ),
              //color: Colors.blue,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 25,
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 27,
                ),
              ),
            ),
            iconPerson(
              img: "assets/Imagenes/imgMujer.jpeg",
              name: "Tiana Saris",
              monto: "233.00",
            ),
            iconPerson(
                img: "assets/Imagenes/imgHombre.jpeg",
                name: "Scheleifer",
                monto: "33.00"),
          ],
        )
      ],
    );
  }

  Container iconPerson({
    String? img,
    required String name,
    required String monto,
  }) {
    return Container(
      height: 55,
      width: 130,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(60),
            left: Radius.circular(60),
          )),
      child: Container(
        padding: const EdgeInsets.only(right: 5.0, left: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(img.toString()),
              backgroundColor: Colors.grey,

              /*   child: Icon(
              Icons.ac_unit,
              color: Colors.amber,
            )*/
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 5.0,
                bottom: 5.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "$name",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('\$$monto')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
