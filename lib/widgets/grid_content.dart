import 'dart:ui';

import 'package:flutter/material.dart';

class GridContent extends StatelessWidget {
  const GridContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Table(
          children: const [
            TableRow(
              children: [
                _SingleCard(iconData: Icons.apps, title: 'General', color: Colors.blueAccent,),
                _SingleCard(iconData: Icons.bus_alert, title: 'Transport', color: Colors.indigo,),
              ]
            ),
              TableRow(
              children: [
                _SingleCard(iconData: Icons.shop, title: 'Shopping', color: Colors.red,),
                _SingleCard(iconData: Icons.book, title: 'Bills', color: Colors.orange,),
              ]
            ),
            TableRow(
              children: [
                _SingleCard(iconData: Icons.movie, title: 'Entertainment', color: Colors.amberAccent,),
                _SingleCard(iconData: Icons.graphic_eq_outlined, title: 'Grocery', color: Colors.green,),
              ]
            ),
            TableRow(
              children: [
                _SingleCard(iconData: Icons.apps, title: 'General', color: Colors.blueAccent,),
                _SingleCard(iconData: Icons.bus_alert, title: 'Transport', color: Colors.indigo,),
              ]
            ),
            TableRow(
              children: [
                _SingleCard(iconData: Icons.shop, title: 'Shopping', color: Colors.red,),
                _SingleCard(iconData: Icons.book, title: 'Bills', color: Colors.orange,),
              ]
            ),
          ],
        ),
      ),
    );
  }
}


class _SingleCard extends StatelessWidget {
  final Color? color;
  final IconData iconData;
  final String title;

  const _SingleCard({Key? key, this.color, required this.iconData, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      stops: const [0.1, 0.5],
                      colors: [
                        Colors.white,
                        color ?? Colors.blue,
                      ]
                      ),
                  ),
                  child: Icon(iconData, color: Colors.white, size: 35,),
                ),
                Text(title, style: TextStyle(color: color ?? Colors.blue, fontSize: 18,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}