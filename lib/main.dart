import 'package:flutter/material.dart';

import 'package:designs/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'grid_view',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        'basic': (context)=> const BasicDesignScreen(),
        'page_view':(context)=>const PageViewDesignScreen(),
        'grid_view': (_) => const GridViewDesignScreen()
      },
    );
  }
}