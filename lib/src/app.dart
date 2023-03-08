import 'package:flutter/material.dart';
import 'package:wrike_clone/src/pages/home_page.dart';
import 'package:wrike_clone/src/pages/monday_home.dart';
import 'package:wrike_clone/src/pages/second_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SecondPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}