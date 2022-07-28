import 'package:aninal_plant/screen/screen_choosPlan.dart';
import 'package:aninal_plant/screen/screen_landing.dart';
import 'package:aninal_plant/utills/Strings.dart';
import 'package:flutter/material.dart';

String SCREEN_CHOOSE = 'choose';
String SCREEN_LAND = 'land';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const ScreenLanding(),
      routes: {
        SCREEN_CHOOSE:(context)=>const ScreenChoos(),
        SCREEN_LAND:(context)=>const ScreenLanding()
      },
    );
  }
}

