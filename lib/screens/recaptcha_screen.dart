import 'package:flutter/material.dart';
import 'package:flutter_recaptcha_v2/flutter_recaptcha_v2.dart';
import 'package:gst/screens/login_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class ReCaptchaScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: MyHomePage(title: 'Google ReCaptcha Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static String verifyResult = "";
  LoginScreen ls;

  RecaptchaV2Controller captchaV2controller = RecaptchaV2Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("SHOW ReCAPTCHA"),
                  onPressed: () {
                    captchaV2controller.show();
                  },
                ),
                Text(verifyResult),
              ],
            ),
          ),
          RecaptchaV2(
            apiKey: "6Lddie4UAAAAAJfeFfzj_M2UHvgd9Gy80Ot5Z_BZ",
            apiSecret: "6Lddie4UAAAAAC_06GyJQD052PuWdgbSz7IqrZ_n",
            controller: captchaV2controller,
            onVerifiedError: (err) {
              print(err);
            },
            onVerifiedSuccessfully: (success) {
              setState(() {
                if (success) {
                  verifyResult = "You've been verified successfully.";
                  LoginScreen.enable = true;
                } else {
                  verifyResult = "Failed to verify.";
                }
              },
              );
            },
          ),
        ],
      ),
    );
  }
}
