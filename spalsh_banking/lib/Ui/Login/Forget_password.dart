import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Ui/Login/Email_chack.dart';
import '../../Const/AppString.dart';
import '../../Const/appColor.dart';

class Forget_password extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(AppString.images[0]),
              width: double.infinity,
              height: height / 8,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AppString.logintext,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Enter the email address associated with\n your account to recover password.',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppString.forget_password),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'enter email',
                      icon: Icon(
                        Icons.email,
                        color: AppColor.green,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Email_chack()));
                  },
                  child: Container(
                    height: 50,
                    color: AppColor.green,
                    child: Center(
                        child: Text(
                      'Recoverd',
                      style: FontStyle.b_17ffstyleC,
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
