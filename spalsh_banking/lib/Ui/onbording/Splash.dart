import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:spalsh_banking/Const/AppString.dart';
import 'package:spalsh_banking/Const/appColor.dart';
import 'package:spalsh_banking/Ui/Home/BottomNavController.dart';
import 'package:spalsh_banking/Ui/Login/Sign_up.dart';
import 'package:spalsh_banking/Ui/onbording/onbording.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final box = GetStorage();
  chooseScreen(context) async {
    var userID = await box.read('id');
    if (userID != null) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => BottomNavController()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Sign_up()));
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => chooseScreen(context));
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
