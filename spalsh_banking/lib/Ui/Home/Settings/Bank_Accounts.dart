import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Ui/Home/Settings/Settings.dart';
import 'package:spalsh_banking/Ui/Home/Wallets/add_new_bankAccount.dart';

import '../../../Const/AppString.dart';
import '../../../Const/appColor.dart';

class Bank_Accounts extends StatelessWidget {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.bank_Accountstext,
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
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Expanded(
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 18, right: 18, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppString.bank_accountsSubtitle),
                        Divider(
                          height: 10,
                        ),
                        ListTile(
                            leading: Icon(
                              Icons.account_balance,
                              color: AppColor.green,
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppString.account_Number,
                                  style: FontStyle.b_styledarkblue,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  AppString.bank_and_woner_name,
                                  style: FontStyle.b_12style,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      AppString.Remove_text,
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.red,
                                          fontSize: 10),
                                    ))
                              ],
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.check_circle_outline,
                                color: AppColor.green,
                              ),
                            )),
                        Divider(),
                        ListTile(
                            leading: Icon(
                              Icons.account_balance,
                              color: AppColor.green,
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppString.account_Number,
                                  style: FontStyle.b_styledarkblue,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  AppString.bank_and_woner_name,
                                  style: FontStyle.b_12style,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      AppString.Remove_text,
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.red,
                                          fontSize: 10),
                                    ))
                              ],
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.check_circle_outline,
                                color: AppColor.green,
                              ),
                            )),
                        Divider(),
                        ListTile(
                            leading: Icon(
                              Icons.account_balance,
                              color: AppColor.green,
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppString.account_Number,
                                  style: FontStyle.b_styledarkblue,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  AppString.bank_and_woner_name,
                                  style: FontStyle.b_12style,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      AppString.Remove_text,
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.red,
                                          fontSize: 10),
                                    ))
                              ],
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.check_circle_outline,
                                color: AppColor.green,
                              ),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Add_new_bankAccount()));
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColor.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              AppString.Add_New_Bank_AccountText,
                              style: FontStyle.b_17styleC,
                            )),
                          ),
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
    );
  }
}
