import 'package:flutter/material.dart';
import 'screens/screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StockControl',
      home: HomePage(),
      initialRoute: '/home_page',
      routes: {
        '/home_page': (context) => HomePage(),
      },
      theme: ThemeData.dark(),
    );
  }
}
