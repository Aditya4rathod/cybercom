import 'package:cc_task4/Screens/screen_1.dart';
import 'package:cc_task4/Screens/screen_10.dart';
import 'package:cc_task4/Screens/screen_2.dart';
import 'package:cc_task4/Screens/screen_3.dart';
import 'package:cc_task4/Screens/screen_4.dart';
import 'package:cc_task4/Screens/screen_5.dart';
import 'package:cc_task4/Screens/screen_6.dart';
import 'package:cc_task4/Screens/screen_7.dart';
import 'package:cc_task4/Screens/screen_8.dart';
import 'package:cc_task4/Screens/screen_9.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/Screen2': (context) => Screen2(),
        '/Screen3': (context) => Screen3(),
        '/Screen4': (context) => Screen4(),
        '/Screen5': (context) => Screen5(),
        '/Screen6': (context) => Screen6(),
        '/Screen7': (context) => Screen7(),
        '/Screen8': (context) => Screen8(),
        '/Screen9': (context) => Screen9(),
        '/Screen10': (context) => Screen10(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
