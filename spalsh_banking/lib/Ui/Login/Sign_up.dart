import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Helper/auth_helper.dart';
import 'package:spalsh_banking/Ui/Login/Sign_In_With_phoneNumber.dart';
import 'package:spalsh_banking/Ui/Login/login.dart';
import '../../Const/AppString.dart';
import '../../Const/appColor.dart';

class Sign_up extends StatelessWidget {
  var size, height, width;

  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

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
              'Start Sutrq',
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
                  controller: _email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'enter email',
                    hintText: AppString.enteremail,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(AppString.enterpassword),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _pass,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'enter password',
                    hintText: AppString.enterpassword,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    final UserEmail = _email.text;
                    final UserPass = _pass.text;
                    var obj = Aouth_Helper();
                    obj.signUp(UserEmail, UserPass, context);
                  },
                  child: Container(
                    height: 50,
                    color: AppColor.green,
                    child: Center(
                        child: Text(
                      "Sign UP",
                      style: FontStyle.b_17ffstyleC,
                    )),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login_Screen()),
                      );
                    },
                    child: Text(
                      'Already created account? Login',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () => Aouth_Helper().signInWithGoogle(context),
                    child: Text(
                      'SignIn With Google',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sign_Phone_Number()));
                    },
                    child: Text(
                      'SignIn With PhoneNumber',
                      style: TextStyle(color: Colors.black),
                    ),
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
