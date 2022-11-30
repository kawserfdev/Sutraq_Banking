import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/AppString.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import '../../Const/appColor.dart';

class Email_chack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backHoneyDew,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          elevation: 5,
          title: Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(AppString.images[8]),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Check your Inbox!",
                  style: FontStyle.b_style,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "An email has been sent to you.\n Click the link to reset your\n password.",
                  style: FontStyle.n_12stylegray,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Center(
                    child: Text(
                  'Check Email',
                  style: FontStyle.b_17styleC,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
