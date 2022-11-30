import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Ui/Home/Wallets/SendMoney.dart/sendMoney_Bank/Bank_Transfer.dart';
import '../../../../../Const/AppString.dart';
import '../../../../../Const/appColor.dart';
import 'Enter_Transaction_Pin.dart';
import 'Success.dart';

class Transfer_Summary extends StatelessWidget {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.bank_TransferTitletext,
          style: FontStyle.b_22ffstyledarkblue,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => Bank_Tramsfer()));
          },
          color: AppColor.black,
        ),
        backgroundColor: AppColor.backHoneyDew,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      children: [
                        ListTile(
                            title: Text(
                              AppString.Recipient,
                              style: FontStyle.n_12style,
                            ),
                            subtitle: Text(
                              AppString.account_owner_name,
                              style: FontStyle.b_styledarkblue,
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.assignment_ind,
                                color: AppColor.green,
                              ),
                            )),
                        Divider(),
                        ListTile(
                            title: Text(
                              AppString.recipients_CountryText,
                              style: FontStyle.n_12style,
                            ),
                            subtitle: Text(
                              AppString.recipients_Country,
                              style: FontStyle.b_styledarkblue,
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.assignment_ind,
                                color: AppColor.green,
                              ),
                            )),
                        Divider(),
                        ListTile(
                            title: Text(
                              AppString.bankText,
                              style: FontStyle.n_12style,
                            ),
                            subtitle: Text(
                              AppString.access_Bank,
                              style: FontStyle.b_styledarkblue,
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.assignment_ind,
                                color: AppColor.green,
                              ),
                            )),
                        Divider(),
                        ListTile(
                            title: Text(
                              AppString.account_Number,
                              style: FontStyle.n_12style,
                            ),
                            subtitle: Text(
                              AppString.account_Number,
                              style: FontStyle.b_styledarkblue,
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.assignment_ind,
                                color: AppColor.green,
                              ),
                            )),
                        Divider(),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppString.amout_to_sendtext,
                                  style: FontStyle.n_stylegray,
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  AppString.amount,
                                  style: FontStyle.b_24style,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  AppString.servicefeeText,
                                  style: FontStyle.n_stylegray,
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  AppString.servicefee,
                                  style: FontStyle.b_24style,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Success()));
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
                              AppString.amount,
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
