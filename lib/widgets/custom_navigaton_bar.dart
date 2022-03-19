import 'package:flutter/material.dart';


class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      selectedItemColor: Color.fromRGBO(241, 142, 172, 1),
      unselectedItemColor: Colors.grey,
      backgroundColor: Color(0xff2E305F),
      items: [
        BottomNavigationBarItem(label: 'Hello', icon: Icon(Icons.calendar_today)),
        BottomNavigationBarItem(label: 'Hi',icon: Icon(Icons.bar_chart)),
        BottomNavigationBarItem(label: 'Arigato',icon: Icon(Icons.camera))
      ]
      );
  }
}