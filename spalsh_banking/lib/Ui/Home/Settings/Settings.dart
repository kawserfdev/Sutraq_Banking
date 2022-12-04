import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spalsh_banking/Const/AppString.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Const/appColor.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:spalsh_banking/Helper/auth_helper.dart';
import 'package:spalsh_banking/Ui/Home/Settings/Bank_Accounts.dart';
import 'package:spalsh_banking/Ui/Home/Settings/Change_Password.dart';
import 'package:spalsh_banking/Ui/Home/Settings/Change_Pin.dart';
import 'package:spalsh_banking/Ui/Home/Settings/Credit_Debit_cards.dart';
import 'package:spalsh_banking/Ui/Home/Settings/Refer_Friend.dart';
import 'package:spalsh_banking/Ui/Login/login.dart';

class Settings_screen extends StatefulWidget {
  const Settings_screen({super.key});

  @override
  State<Settings_screen> createState() => _Settings_screenState();
}

class _Settings_screenState extends State<Settings_screen> {
  bool status = false;
  var size, height, width;

  final Aouth_Helper _auth = Aouth_Helper();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
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
                      Text(FirebaseAuth.instance.currentUser!.displayName.toString(),style: FontStyle.b_17styleC,),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      AppString.subtitle_LoginScreen,
                      style: FontStyle.n_15stylegray,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.navigate_next_outlined,
                      size: 35,
                      color: AppColor.gray,
                    ),
                  )),
              // End Hello
              SizedBox(
                height: 45,
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
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Container(
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppString.general,
                                  style: FontStyle.n_10stylegray,
                                ),
                                Divider(
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Bank_Accounts()));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppString.bank_Accountstext,
                                      style: FontStyle.b_15style,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.navigate_next_outlined,
                                        size: 35,
                                        color: AppColor.gray,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 10,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Credit_Debit_cards()));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppString.my_card,
                                      style: FontStyle.b_15style,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.navigate_next_outlined,
                                        size: 35,
                                        color: AppColor.gray,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 10,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Change_Pin()));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppString.Change_Transaction_Pin,
                                      style: FontStyle.b_15style,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.navigate_next_outlined,
                                        size: 35,
                                        color: AppColor.gray,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 10,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Change_Password()));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppString.Security,
                                      style: FontStyle.b_15style,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.navigate_next_outlined,
                                        size: 35,
                                        color: AppColor.gray,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 10,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppString.Documents,
                                      style: FontStyle.b_15style,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.navigate_next_outlined,
                                        size: 35,
                                        color: AppColor.gray,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 10,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppString.Preferences,
                                  style: FontStyle.n_10stylegray,
                                ),
                                Divider(
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Refer_friend()));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppString.invite,
                                      style: FontStyle.b_15style,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.navigate_next_outlined,
                                        size: 35,
                                        color: AppColor.gray,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 10,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppString.Report,
                                      style: FontStyle.b_15style,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.navigate_next_outlined,
                                        size: 35,
                                        color: AppColor.gray,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 10,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppString.Notifications,
                                  style: FontStyle.n_10stylegray,
                                ),
                                Divider(
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppString.Get_updates,
                                    style: FontStyle.b_15style,
                                  ),
                                  Switch(
                                      value: status,
                                      onChanged: (Value) {
                                        setState(() {
                                          status = Value;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 10,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () async {
                                  await _auth.signOut().then((result) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Login_Screen()));
                                  });
                                },
                                child: Text(
                                  "Log Out",
                                  style: FontStyle.b_15styledarkblue,
                                ),
                              ),
                              Divider(
                                height: 20,
                              )
                            ],
                          ),
                        ],
                      ),
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
