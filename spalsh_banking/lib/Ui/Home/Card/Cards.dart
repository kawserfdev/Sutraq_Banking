import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/AppString.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Const/appColor.dart';
import 'package:spalsh_banking/Ui/Home/Dashbord/Transactions_History.dart';

import 'add_new_account.dart';

class My_Cards extends StatefulWidget {
  const My_Cards({super.key});

  @override
  State<My_Cards> createState() => _My_CardsState();
}

class _My_CardsState extends State<My_Cards> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: AppColor.backHoneyDew,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Add_Card()));
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              //Start Hello
              Text(
                AppString.my_card,
                style: FontStyle.b_20style,
              ),

              // End Hello
              SizedBox(
                height: 15,
              ),
              //Stert Card
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: height / 5,
                  width: double.maxFinite,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Container(
                      height: height / 5,
                      width: 230,
                      decoration: BoxDecoration(
                        color: AppColor.darkblue,
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
                                Text(AppString.cardtitle,
                                    style: FontStyle.b_12styleC),
                                SizedBox(
                                  width: 18,
                                ),
                                Icon(
                                  Icons.remove_red_eye,
                                  size: 20,
                                  color: AppColor.whaite,
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
                      height: height / 5,
                      width: 230,
                      decoration: BoxDecoration(
                        color: AppColor.blue,
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
                                    style: FontStyle.b_15style),
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
                      height: height / 5,
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
                  ]),
                ),
              ),
              //end Card
              SizedBox(
                height: 45,
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
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
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.transaction_histry,
                                style: FontStyle.b_17ffstyle,
                              ),
                              // TextButton(
                              //     onPressed: () => Navigator.of(context).push(
                              //         MaterialPageRoute(
                              //             builder: (context) =>
                              //                 Transaction_History())),
                              //     child: Text(AppString.view,
                              //         style: FontStyle.n_stylegreen))
                            ],
                          ),
                        ),
                        Divider(
                          height: 15,
                        ),
                        Expanded(
                          child: Container(
                            child: ListView.builder(
                              itemCount: 15,
                              itemBuilder: (_, index) {
                                return Column(
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
                                          style: FontStyle.b_17ffstyle,
                                        ),
                                        subtitle: Text(AppString.date,
                                            style: FontStyle.n_stylegray),
                                        trailing: Text(AppString.amount,
                                            style: FontStyle.b_15style),
                                      ),
                                    ),
                                    Divider(
                                      height: 5,
                                    )
                                  ],
                                );
                              },
                            ),
                          ),
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
