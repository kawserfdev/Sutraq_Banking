import 'package:flutter/material.dart';

import '../../Const/AppString.dart';
import '../../Const/appColor.dart';
import '../../Helper/auth_helper.dart';
import 'login.dart';

class Sign_Phone_Number extends StatelessWidget {
  var size, height, width;
  TextEditingController _phoneController = TextEditingController();
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
                  controller: _phoneController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'enter your phone Number',
                    hintText: AppString.enteremail,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: ElevatedButton(
                      onPressed: () => Aouth_Helper()
                          .phoneAuth(_phoneController.text, context),
                      child: Text('Continue')),
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
                  height: 20,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
