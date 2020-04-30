import 'package:flutter/material.dart';
import 'package:gst/screens/starting_screen.dart';
import 'package:page_transition/page_transition.dart';

void main(){
  runApp(MyGst());
}

class MyGst extends StatefulWidget {
  @override
  _MyGstState createState() => _MyGstState();
}

class _MyGstState extends State<MyGst> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartingScreen(),
    );
  }
}
