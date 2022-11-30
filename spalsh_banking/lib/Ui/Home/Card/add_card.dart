import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/AppButton/Appbutton.dart';
import 'package:spalsh_banking/Const/AppString.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Const/appColor.dart';
import 'package:spalsh_banking/Ui/Home/Card/add_new_Bank_Card.dart';

import 'Cards.dart';

class Add_Card extends StatelessWidget {
  const Add_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.add_new_account,
          style: FontStyle.b_22ffstyledarkblue,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => My_Cards()));
          },
          color: AppColor.black,
        ),
        backgroundColor: AppColor.backHoneyDew,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppString.currency,
                style: FontStyle.n_stylegray,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: AppColor.gray)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(AppString.choose_Currency),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_downward,
                        color: AppColor.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Add_new_Bank_Card()));
              },
              child: Container(
                height: 60,
                color: AppColor.green,
                child: Center(
                    child: Text(
                  AppString.confirm,
                  style: FontStyle.b_17ffstyleC,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
