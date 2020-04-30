import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:hexcolor/hexcolor.dart';
import 'dart:async';
import 'package:gst/screens/login_screen.dart';

import 'package:page_transition/page_transition.dart';

class StartingScreen extends StatefulWidget {
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.push(
        context,
        PageTransition(
          curve: Curves.linear,
          type: PageTransitionType.rightToLeftWithFade,
          alignment: Alignment.center,
          duration: Duration(milliseconds: 700),
          child: LoginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // margin: EdgeInsets.all(20),
        // color: Color.fromRGBO(47, 91, 145, 0),
        //color: Hexcolor("#355c91"),

        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Image(
          image: AssetImage("assets/gs.png"),
          width: MediaQuery.of(context).size.width-20,
          height: 800,
          //fit: BoxFit.fill,
        ),
      ),
    );
  }
}
