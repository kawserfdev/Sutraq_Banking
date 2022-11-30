import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';

import '../../../../Const/AppString.dart';
import '../../../../Const/appColor.dart';

class FoundWallet_popUp extends StatelessWidget {
  const FoundWallet_popUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkblue,
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
                   Text(
                    AppString.choose_optionText,
                    style: FontStyle.b_17style,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      AppString.subtitle_choose_optionText,
                      style: FontStyle.b_10stylegray,
                    ),
                  )
                ],
              )),
          content: new Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Card(
                    color: AppColor.darkblue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    elevation: 5,
                    child: Container(
                      height: 80,
                      width: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 5,
                                      decoration: BoxDecoration(
                                          color: AppColor.green,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(1),
                                              bottomLeft: Radius.circular(1))),
                                    ),
                                    Container(
                                      height: 10,
                                      width: 5,
                                      color: AppColor.whaite,
                                    ),
                                    Container(
                                      height: 10,
                                      width: 5,
                                      decoration: BoxDecoration(
                                          color: AppColor.green,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(1),
                                              bottomRight: Radius.circular(1))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "NGN",
                                      style: FontStyle.n_10styleC,
                                    )
                                  ],
                                )
                              ],
                            ),
                            Text(
                              "N12,000",
                              style: FontStyle.b_12styleC,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Card(
                    color: AppColor.whaite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    elevation: 5,
                    child: Container(
                      height: 80,
                      width: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppString.images[6],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "GBP",
                                  style: FontStyle.n_10style,
                                )
                              ],
                            ),
                            Text(
                              "£500",
                              style: FontStyle.b_12style,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Card(
                    color: AppColor.whaite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    elevation: 5,
                    child: Container(
                      height: 80,
                      width: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(AppString.images[6]),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "GBP",
                                  style: FontStyle.n_10style,
                                )
                              ],
                            ),
                            Text(
                              "£500",
                              style: FontStyle.b_12style,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                 
                ],
              )
            ],
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.green,
                  borderRadius: BorderRadius.all(Radius.circular(5),),
                ),
                child: Center(child: Text(AppString.wallet,style:FontStyle.b_17styleC,)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}