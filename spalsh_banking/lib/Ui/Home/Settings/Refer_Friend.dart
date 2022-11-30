import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';

import '../../../Const/AppString.dart';
import '../../../Const/appColor.dart';
import 'Settings.dart';

class Refer_friend extends StatelessWidget {
  const Refer_friend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.card_typesTitle,
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
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
              child: Expanded(
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 18, left: 18, right: 18, bottom: 20),
                    child: Column(
                      children: [
                        Image.asset(AppString.images[1]),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          AppString.info_text,
                          style: FontStyle.n_stylegray,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.gray,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppString.refer_code,
                                      style: FontStyle.b_20styledarkblue,
                                    ),
                                    Icon(Icons.copy)
                                  ]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppString.accepted_text,
                                  style: FontStyle.n_12stylegray,
                                ),
                                Text(
                                  AppString.accepted_count,
                                  style: FontStyle.b_17styledarkblue,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  AppString.amount_EarnedText,
                                  style: FontStyle.n_12stylegray,
                                ),
                                Text(
                                  AppString.amount,
                                  style: FontStyle.b_17styledarkblue,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
