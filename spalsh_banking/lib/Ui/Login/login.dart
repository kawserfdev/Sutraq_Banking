import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/AppString.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Const/appColor.dart';
import 'package:spalsh_banking/Ui/Login/Forget_password.dart';
import 'package:spalsh_banking/Ui/Login/Idia.dart';
import '../Home/BottomNavController.dart';

class Login_Screen extends StatelessWidget {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      backgroundColor: AppColor.backHoneyDew,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(AppString.images[0]),
              width: double.infinity,
              height: height / 9,
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
            Text(AppString.subtitle_homeScreen),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppString.enteremail),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'enter email',
                      hintText: AppString.enteremail,
                      icon: Icon(
                        Icons.email,
                        color: AppColor.green,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(AppString.enterpassword),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'enter password',
                      icon: Icon(
                        Icons.password,
                        color: AppColor.green,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Forget_password())),
                    child: Text(
                      AppString.forget_password,
                      style: TextStyle(color: AppColor.green),
                    ),
                  ),
                ),
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
                      AppString.login,
                      style: FontStyle.b_17ffstyleC,
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(AppString.needaccount),
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.fingerprint,
              size: height / 15,
              color: AppColor.green,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              AppString.use_fingerprint,
              style: TextStyle(color: AppColor.green),
            ),
          ],
        ),
      ),
    );
  }
}
