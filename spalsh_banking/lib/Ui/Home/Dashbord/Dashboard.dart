import 'dart:html';

import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/AppString.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Const/appColor.dart';
import 'package:spalsh_banking/Ui/Home/Dashbord/DashBordPopUp/FoundWallet_popUp.dart';
import 'package:spalsh_banking/Ui/Home/Dashbord/DashBordPopUp/sendmoney_popUp.dart';
import 'package:spalsh_banking/Ui/Home/Dashbord/Notifications.dart';
import 'package:spalsh_banking/Ui/Home/Dashbord/Transactions_History.dart';
import 'package:spalsh_banking/Ui/Home/Wallets/SendMoney.dart/sendMoney_Bank/Bank_Transfer.dart';

import '../Wallets/Wallet.dart';
import 'DashBordPopUp/Withdrow_popUp.dart';

class Dashboard_screen extends StatefulWidget {
  @override
  State<Dashboard_screen> createState() => _Dashboard_screenState();
}

class _Dashboard_screenState extends State<Dashboard_screen> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: AppColor.backGround,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              //Start Hello
              ListTile(
                  leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(45),
                      ),
                      color: AppColor.blue,
                    ),
                    child: Center(
                      child: Text('OP', style: FontStyle.b_20ffstyleC),
                    ),
                  ),
                  title:
                      Text(AppString.titlehello, style: FontStyle.b_22ffstyleC),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      AppString.subtitle_homeScreen,
                      style: FontStyle.n_15stylegray,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notifications()));
                    },
                    icon: Icon(
                      Icons.notification_add,
                      size: 35,
                      color: AppColor.gray,
                    ),
                  )),

              // End Hello
              SizedBox(
                height: 10,
              ),
              //Stert Card

              Container(
                height: height / 8,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: height / 8,
                      width: 230,
                      decoration: BoxDecoration(
                        color: AppColor.backHoneyDew,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Image.asset(
                                  AppString.images[6],
                                  width: 25,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  AppString.cardtitle,
                                  style: FontStyle.b_12styleC,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Icon(
                                  Icons.remove_red_eye,
                                  size: 20,
                                  color: AppColor.black,
                                )
                              ]),
                              Text(
                                AppString.cardbalanceinfo,
                                style: FontStyle.n_10stylegray,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppString.cardbalance,
                                    style: FontStyle.b_22ffstylegreen,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_circle_right_rounded,
                                      color: AppColor.green,
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: height / 8,
                      width: 230,
                      decoration: BoxDecoration(
                        color: AppColor.backHoneyDew,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Image.asset(
                                  AppString.images[0],
                                  width: 25,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(AppString.cardtitle,
                                    style: FontStyle.b_12style),
                                SizedBox(
                                  width: 18,
                                ),
                                Icon(
                                  Icons.remove_red_eye,
                                  size: 20,
                                  color: AppColor.black,
                                )
                              ]),
                              Text(AppString.cardbalanceinfo,
                                  style: FontStyle.n_10stylegray),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(AppString.cardbalance,
                                      style: FontStyle.b_22stylegreen),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_circle_right_rounded,
                                        color: AppColor.green,
                                      ))
                                ],
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: height / 8,
                      width: 230,
                      decoration: BoxDecoration(
                        color: AppColor.backHoneyDew,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Image.asset(
                                  AppString.images[6],
                                  width: 35,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(AppString.cardtitle,
                                    style: FontStyle.n_12style),
                                SizedBox(
                                  width: 18,
                                ),
                                Icon(
                                  Icons.remove_red_eye,
                                  size: 20,
                                  color: AppColor.black,
                                )
                              ]),
                              Text(AppString.cardbalanceinfo,
                                  style: FontStyle.n_10stylegray),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(AppString.cardbalance,
                                      style: FontStyle.b_22ffstylegreen),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_circle_right_rounded,
                                        color: AppColor.green,
                                      ))
                                ],
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              //end Card
              SizedBox(
                height: 45,
              ),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, top: 11, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Sendmoney_popUp()));
                                    },
                                    child: Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(55),
                                        ),
                                        color: AppColor.black,
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.send_outlined,
                                        color: AppColor.backHoneyDew,
                                      )),
                                    ),
                                  ),
                                  Text(AppString.sendmoney,
                                      style: FontStyle.n_20ffstyle)
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Withdrow_PopUp(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(55),
                                        ),
                                        color: AppColor.black,
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.width_full_outlined,
                                        color: AppColor.backHoneyDew,
                                      )),
                                    ),
                                  ),
                                  Text(
                                    AppString.withdraw,
                                    style: FontStyle.n_20ffstyle,
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FoundWallet_popUp()));
                                    },
                                    child: Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(55),
                                        ),
                                        color: AppColor.black,
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.wallet,
                                        color: AppColor.backHoneyDew,
                                      )),
                                    ),
                                  ),
                                  Text(
                                    AppString.wallet,
                                    style: FontStyle.n_20ffstyle,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.whaite,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 15),
                                child: Text(
                                  AppString.transactions,
                                  style: FontStyle.n_20ffstyle,
                                ),
                              ),
                              Divider(
                                height: 15,
                              ),
                              Expanded(
                                child: Container(
                                  child: ListView(
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.arrow_circle_down,
                                            color: Color(0XFFC0392B),
                                          ),
                                          title: Text(
                                            AppString.access_Bank,
                                            style: FontStyle.n_15ffstyle,
                                          ),
                                          subtitle: Text(AppString.date,
                                              style: FontStyle.n_stylegray),
                                          trailing: Text(AppString.amount,
                                              style: FontStyle.b_15stylegreen),
                                        ),
                                      ),
                                      Divider(
                                        height: 5,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.arrow_circle_down,
                                            color: Color(0XFFC0392B),
                                          ),
                                          title: Text(
                                            AppString.access_Bank,
                                            style: FontStyle.n_15ffstyle,
                                          ),
                                          subtitle: Text(AppString.date,
                                              style: FontStyle.n_stylegray),
                                          trailing: Text(AppString.amount,
                                              style: FontStyle.b_15stylegreen),
                                        ),
                                      ),
                                      Divider(
                                        height: 5,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.arrow_circle_down,
                                            color: Color(0XFFC0392B),
                                          ),
                                          title: Text(
                                            AppString.access_Bank,
                                            style: FontStyle.n_15ffstyle,
                                          ),
                                          subtitle: Text(AppString.date,
                                              style: FontStyle.n_stylegray),
                                          trailing: Text(AppString.amount,
                                              style: FontStyle.b_15stylegreen),
                                        ),
                                      ),
                                      Divider(
                                        height: 5,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.arrow_circle_down,
                                            color: Color(0XFFC0392B),
                                          ),
                                          title: Text(
                                            AppString.access_Bank,
                                            style: FontStyle.n_15ffstyle,
                                          ),
                                          subtitle: Text(AppString.date,
                                              style: FontStyle.n_stylegray),
                                          trailing: Text(AppString.amount,
                                              style: FontStyle.b_15stylegreen),
                                        ),
                                      ),
                                      Divider(
                                        height: 5,
                                      ),
                                      TextButton(
                                          onPressed: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      Transaction_History())),
                                          child: Text(AppString.view,
                                              style: FontStyle.n_stylegreen)),
                                      Divider(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
