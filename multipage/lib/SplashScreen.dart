
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multipage/IntroPage.dart';
import 'package:multipage/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),() =>
      Navigator.pushReplacement(
          context, MaterialPageRoute(
          builder: (context)=> MyHomePage(title: "HomePage"))),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent[100],
        child: Center(child: Text("Chakrabuha" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45),)),
      ),
    );
  }
}

