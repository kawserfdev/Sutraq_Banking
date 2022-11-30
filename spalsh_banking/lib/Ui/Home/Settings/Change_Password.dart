import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';

import '../../../Const/AppString.dart';
import '../../../Const/appColor.dart';
import 'Settings.dart';

class Change_Password extends StatelessWidget {
  const Change_Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backHoneyDew,
      appBar: AppBar(
        title: Text(
          AppString.change_Passwordtitle,
          style: FontStyle.b_22ffstyledarkblue,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => Settings_screen()));
          },
          color: AppColor.black,
        ),
        backgroundColor: AppColor.backHoneyDew,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              AppString.changepin_Subtitle,
              style: FontStyle.n_stylegray,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            AppString.current_Passwordtext,
                            style: FontStyle.n_stylegray,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: AppString.enterpassword,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            AppString.new_Passwordtext,
                            style: FontStyle.n_stylegray,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: AppString.enterpassword,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            AppString.current_Passwordtext,
                            style: FontStyle.n_stylegray,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: AppString.enterpassword,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Success()));
                      },
                      child: Container(
                        height: 50,
                        color: AppColor.green,
                        child: Center(
                            child: Text(
                          AppString.change_Pintext,
                          style: FontStyle.b_17ffstyleC,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
