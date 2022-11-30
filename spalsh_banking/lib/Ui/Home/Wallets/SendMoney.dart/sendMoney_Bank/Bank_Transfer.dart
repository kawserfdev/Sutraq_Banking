import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Ui/Home/Wallets/SendMoney.dart/sendMoney_Bank/Choose_payment_option_popUp.dart';
import 'package:spalsh_banking/Ui/Home/Wallets/SendMoney.dart/sendmoney.dart';
import 'package:spalsh_banking/Ui/Home/Wallets/add_new_bankAccount.dart';
import '../../../../../Const/AppString.dart';
import '../../../../../Const/appColor.dart';
import 'Transfer_Summary.dart';

class Bank_Tramsfer extends StatelessWidget {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: AppColor.backHoneyDew,
      appBar: AppBar(
        title: Text(
          AppString.bank_TransferTitletext,
          style: FontStyle.b_22ffstyledarkblue,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => SandMoney()));
          },
          color: AppColor.black,
        ),
        backgroundColor: AppColor.backHoneyDew,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              AppString.subtitle_addnewaccount,
              style: FontStyle.n_stylegray,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20,bottom: 20),
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.select_Your_AccountText,
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
                                leading: Icon(
                                  Icons.account_balance,
                                  color: AppColor.green,
                                ),
                                title: Text(
                                  AppString.account_category,
                                  style: FontStyle.b_15style,
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Choose_payment_option_popUp()));
                                  },
                                  icon: Icon(
                                    Icons.expand_more,
                                    color: AppColor.green,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.recipients_Country,
                                style: FontStyle.n_stylegray,
                              ),
                              TextButton(
                                  onPressed: () {},
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
                                leading: Icon(
                                  Icons.location_on,
                                  color: AppColor.green,
                                ),
                                title: Text(
                                  AppString.Recipients_Country_name,
                                  style: FontStyle.b_15style,
                                ),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.expand_more,
                                    color: AppColor.green,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.recipients_Destinationtext,
                                style: FontStyle.n_stylegray,
                              ),
                              TextButton(
                                  onPressed: () {},
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
                                leading: Icon(
                                  Icons.account_balance,
                                  color: AppColor.green,
                                ),
                                title: Text(
                                  AppString.recipients_Destination,
                                  style: FontStyle.b_15style,
                                ),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.expand_more,
                                    color: AppColor.green,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              AppString.recipients_Account_Nametext,
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
                                  Icon(
                                    Icons.assignment_ind,
                                    color: AppColor.green,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    AppString.enter_Account_NameText,
                                    style: FontStyle.n_12stylegray,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              AppString.account_NumberText,
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
                                  Icon(
                                    Icons.dialpad,
                                    color: AppColor.green,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    AppString.enter_Account_NameText,
                                    style: FontStyle.n_12stylegray,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
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
                                        color: AppColor.green, fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    AppString.enter_amountText,
                                    style: FontStyle.n_12stylegray,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Transfer_Summary()));
                        },
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
          )
        ],
      ),
    );
  }
}
