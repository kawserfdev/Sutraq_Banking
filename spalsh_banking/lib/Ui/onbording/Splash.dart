import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/AppString.dart';
import 'package:spalsh_banking/Const/appColor.dart';
import 'package:spalsh_banking/Ui/onbording/onbording.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Onbording_screen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.darkblue,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            AppString.images[0],
            scale: 2.5,
          )
        ]),
      ),
    );
  }
}
