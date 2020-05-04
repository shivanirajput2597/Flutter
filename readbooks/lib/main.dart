import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'homescreen.dart';


void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
    
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState()
  {
    super.initState();
    startTimer();
  }

  startTimer() async{
    var duration = Duration(seconds: 4);
    return Timer(duration, route);
  }
  route()
  {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (content) => homescreen()
    )
    );
  }

  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      
      title: new Text('Welcome to my Reading App',
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.black,
          fontFamily: "Caveat",
        ),
      ),
      image: Image.asset('assets/images/logo.png'),
      
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.black,
    );
  }
}

