import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/AppString.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Const/appColor.dart';
import 'package:spalsh_banking/Ui/Home/Dashbord/Transactions_History.dart';
import 'package:spalsh_banking/Ui/Home/Dashbord/DashBordPopUp/FoundWallet_popUp.dart';
import 'package:spalsh_banking/Ui/Home/Dashbord/DashBordPopUp/sendmoney_popUp.dart';
import 'package:spalsh_banking/Ui/Home/Wallets/SendMoney.dart/sendMoney_Bank/Bank_Transfer.dart';
import 'package:spalsh_banking/Ui/Home/Wallets/WithDrow/WithDrow.dart';
import 'FoundWallet/Fount_wallet2.dart';
import '../Dashbord/DashBordPopUp/Withdrow_popUp.dart';
import 'FoundWallet/Fount_wallet1.dart';
import 'SendMoney.dart/sendmoney.dart';

class My_Walets extends StatefulWidget {
  @override
  State<My_Walets> createState() => _My_WaletsState();
}

class _My_WaletsState extends State<My_Walets> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: AppColor.backHoneyDew,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              //Start Hello
              Text(
                AppString.My_Wallets,
                style: FontStyle.b_20style,
              ),

              // End Hello
              SizedBox(
                height: 10,
              ),
              //Stert Card
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: height / 8,
                  width: double.maxFinite,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Container(
                      height: height / 8,
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
                      width: 8,
                    ),
                    Container(
                      height: height / 8,
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
                      width: 8,
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
                                            builder: (context) => SandMoney(),
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
                                          color: AppColor.green,
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.send_outlined,
                                          color: AppColor.backHoneyDew,
                                        )),
                                      ),
                                    ),
                                    Text(
                                      AppString.sendmoney,
                                      style: FontStyle.b_17ffstyle,
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
                                            builder: (context) => WithDrow(),
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
                                          color: AppColor.green,
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
                                      style: FontStyle.b_17ffstyle,
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
                                                Fount_Wallet(),
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
                                          color: AppColor.green,
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
                                      style: FontStyle.b_17ffstyle,
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
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        AppString.transaction_histry,
                                        style: FontStyle.b_17ffstyle,
                                      ),
                                      TextButton(
                                          onPressed: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      Transaction_History())),
                                          child: Text(AppString.view,
                                              style: FontStyle.n_stylegreen))
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
                                                    style:
                                                        FontStyle.n_stylegray),
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
