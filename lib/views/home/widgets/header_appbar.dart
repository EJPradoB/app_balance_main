import 'package:flutter/material.dart';

class HeaderAppbar extends StatelessWidget {
  const HeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        square(Icons.menu),
        RichText(
          text: TextSpan(
            text: 'Welcome back, ',
            style: TextStyle(
                fontSize: 16.0,
                color:
                    const Color.fromARGB(255, 241, 240, 240).withOpacity(0.7)),
            children: const [
              TextSpan(
                text: 'Airp!',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        square(Icons.notification_add_rounded),
      ],
    );
  }

  Widget square(IconData icon) {
    return Container(
      width: 35.0,
      height: 35.0,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}
