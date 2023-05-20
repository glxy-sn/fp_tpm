import 'package:final_tpm/dashboard.dart';
import 'package:final_tpm/login/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiara Recipe App',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
        fontFamily: 'Satoshi',
        ),
      home: Dashboard(),
    );
  }
}