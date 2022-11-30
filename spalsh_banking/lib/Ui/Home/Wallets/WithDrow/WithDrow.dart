import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import '../../../../Const/AppString.dart';
import '../../../../Const/appColor.dart';
import '../Wallet.dart';
import '../add_new_bankAccount.dart';

class WithDrow extends StatelessWidget { 
   var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.add_New_Bank_Card,
          style: FontStyle.b_22ffstyledarkblue,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => My_Walets()));
          },
          color: AppColor.black,
        ),
        backgroundColor: AppColor.backHoneyDew,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              AppString.subtitle_addnewaccount,
              style: FontStyle.n_stylegray,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Stack(
                  fit: StackFit.loose,
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: Container(
                        height: 450,
                        margin: EdgeInsets.all(16.0),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 70, left: 18, right: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    AppString.amountText,
                                    style: FontStyle.n_stylegray,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2.0, color: AppColor.gray)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "N",
                                          style: TextStyle(
                                              color: AppColor.green,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          AppString.enter_amountText,
                                          style: FontStyle.b_15ffstyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    AppString.payment_OptionText,
                                    style: FontStyle.n_stylegray,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2.0, color: AppColor.gray)),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.wallet,
                                      size: 20,
                                      color: AppColor.green,
                                    ),
                                    title: Text(
                                      AppString.input_Card,
                                      style: FontStyle.b_15style,
                                    ),
                                    trailing: Icon(
                                      Icons.expand_more,
                                      color: AppColor.green,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppString.select_CardText,
                                      style: FontStyle.n_stylegray,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Add_new_bankAccount()));
                                        },
                                        child: Text(
                                          AppString.add_NewText,
                                          style: FontStyle.n_styledarkblue,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2.0, color: AppColor.gray)),
                                  child: ListTile(
                                    leading: Container(
                                      height: 17,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          color: AppColor.blue,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: Center(
                                          child: Text(
                                        "VISA",
                                        style: TextStyle(
                                            color: AppColor.whaite,
                                            fontSize: 10),
                                      )),
                                    ),
                                    title: Text(
                                      AppString.select_card,
                                      style: FontStyle.b_15style,
                                    ),
                                    trailing: Icon(
                                      Icons.expand_more,
                                      color: AppColor.green,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 25),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 50,
                                    color: AppColor.green,
                                    child: Center(
                                        child: Text(
                                      AppString.proceed,
                                      style: FontStyle.b_17ffstyleC,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
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
                              ]),
                              Text(AppString.cardbalanceinfo,
                                  style: FontStyle.n_10stylegray),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(AppString.cardbalance,
                                      style: FontStyle.b_22styleC),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_circle_right_rounded,
                                      color: AppColor.whaite,
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

