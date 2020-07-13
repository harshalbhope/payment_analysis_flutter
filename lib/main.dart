import 'package:flutter/material.dart';
import 'package:payment_analysis_flutter/Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}
//helloo this is pull
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayNal',
      theme: ThemeData(
        primaryColorDark: Color(0xff5494f4),
        primaryColorLight: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
