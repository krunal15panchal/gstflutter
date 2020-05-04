import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  var pages = [
    PageViewModel(
        title: "GSTR1",
        body: "FOR QUARTERLY/MONTHLY GST CALCULATION",
        image: Center(child: Image.asset("assets/k.png", height: 300.0)),
        decoration: const PageDecoration(
          //pageColor: Color.fromRGBO(47, 91, 145, 1.0),
          boxDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromRGBO(38, 87, 137, 1.0),
                Colors.black
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          bodyTextStyle: TextStyle(color: Colors.white, fontSize:20.0, fontWeight: FontWeight.w900),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0,fontWeight: FontWeight.w900),
        ),
        footer: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:Hexcolor("#2f5b91"),
          ),
          child: Center(
            child: FlatButton(
              onPressed: () {

              },
              child: Text(
                "PROCEED",
                style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
    ),

    PageViewModel(
      title: "GST3B",
      body: "FOR EVERY 10TH DATE OF THE MONTH ",
      image: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Image.asset(
            "assets/gst5.png",
            height: 200.0,
            //colorBlendMode: BlendMode.clear,
          ),
        ),
      ),
      decoration: const PageDecoration(
        //pageColor: Colors.deepPurple,
        boxDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromRGBO(38, 87, 137, 1.0),
              Colors.black
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        bodyTextStyle: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w900),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0,fontWeight: FontWeight.w900),
      ),
      footer: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:Hexcolor("#2f5b91"),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "PROCEED",
              style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
    ),

    PageViewModel(
      titleWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(Icons.settings_power),
              iconSize: 50,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: "LOG OUT",
      decoration: const PageDecoration(
        //pageColor: Colors.deepPurple,
        boxDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromRGBO(38, 87, 137, 1.0),
              Colors.black
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        bodyTextStyle: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w900),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0,fontWeight: FontWeight.w900),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Ubuntu",
      ),
      home: SafeArea(
        child: Scaffold(
          body: IntroductionScreen(
            pages: pages,
            onDone: () {},
            onSkip: () {
              // You can also override onSkip callback
            },
            showSkipButton: false,
            skip: const Icon(
              Icons.skip_next,
              color: Colors.white,
            ),
            next: const Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            done: const Text(
              "Done",
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
            ),
            dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: Colors.red,
              color: Colors.white,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
            ),
          ),
        ),
      ),
    );
  }

  signOut(context)
  {
    return Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
}
