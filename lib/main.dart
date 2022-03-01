import 'package:flutter/material.dart';

import 'package:designs/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'basic',
      debugShowCheckedModeBanner: false,
      routes: {
        'basic': (context)=> const BasicDesignScreen(),
      },
    );
  }
}