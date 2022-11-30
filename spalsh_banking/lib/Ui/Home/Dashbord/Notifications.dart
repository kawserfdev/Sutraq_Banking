import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import '../../../Const/AppString.dart';
import '../../../Const/appColor.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkblue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              //Start Hello
              Text(
                AppString.account_setting,
                style: FontStyle.b_20styleC,
              ),
              SizedBox(
                height: 15,
              ),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.whaite,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 30, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Got a minute to help us out?",
                              style: FontStyle.b_style,
                            ),
                            Text(
                              AppString.timeonly,
                              style: FontStyle.n_stylegreen,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            'We’d like to know how you heard about Sutraq.\n It’s so we can better share our mission with \nthe world. Tap to take the survey.'),
                        Divider(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Got a minute to help us out?",
                              style: FontStyle.b_style,
                            ),
                            Text(
                              AppString.timeonly,
                              style: FontStyle.n_stylegreen,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            'We’d like to know how you heard about Sutraq.\n It’s so we can better share our mission with \nthe world. Tap to take the survey.'),
                        Divider(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
