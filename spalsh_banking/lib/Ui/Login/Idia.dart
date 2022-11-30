import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/AppString.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Ui/Home/BottomNavController.dart';
import 'package:spalsh_banking/Ui/Home/Dashbord/Dashboard.dart';
import '../../Const/appColor.dart';

class Idia_screen extends StatelessWidget {
  const Idia_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkblue,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60, bottom: 60, left: 25, right: 25),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AppString.images[5]),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavController()));
                },
                child: Container(
                  height: 50,
                  color: AppColor.green,
                  child: Center(
                      child: Text(
                    AppString.gotit,
                    style: FontStyle.b_17ffstyleC,
                  )),
                ),
              ),
            ]),
      ),
    );
  }
}
