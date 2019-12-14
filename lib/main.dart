import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magazinstore/Screens/StartScreen.dart';

void main(){
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays ([]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazin Store',
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        fontFamily: 'Lato',
        primaryColor: Colors.blueAccent
      ),
      home: StartScreen()
    );
  }
}
