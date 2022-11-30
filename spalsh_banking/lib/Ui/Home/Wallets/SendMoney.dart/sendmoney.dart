import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Ui/Home/Wallets/SendMoney.dart/sendMoney_Bank/Bank_Transfer.dart';
import 'package:spalsh_banking/Ui/Home/Wallets/SendMoney.dart/sendMony_Sutraq_User/Trancfer_to_sutraq_user.dart';
import '../../../../Const/AppString.dart';
import '../../../../Const/appColor.dart';

class SandMoney extends StatelessWidget {
  const SandMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backHoneyDew,
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            children: [
              Text(
                AppString.sendmoney,
                style: FontStyle.b_24style,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppString.subtitle_sendmoney,
                style: FontStyle.n_stylegray,
              ),
              SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bank_Tramsfer()));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 20, right: 5),
                    child: ListTile(
                      leading: Icon(
                        Icons.balance,
                        color: AppColor.green,
                      ),
                      title: Text(
                        AppString.bank_TransferTitletext,
                        style: FontStyle.b_20style,
                      ),
                      subtitle: Text(
                        AppString.subtitle_sendmoney2,
                        style: FontStyle.n_stylegray,
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: AppColor.green,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Transfer_to_sutraq_user()));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 20, right: 5),
                    child: ListTile(
                      leading: Icon(
                        Icons.group,
                        color: AppColor.green,
                      ),
                      title: Text(
                        AppString.listileTitle2,
                        style: FontStyle.n_20style,
                      ),
                      subtitle: Text(
                        AppString.subtitle_sendmoney2,
                        style: FontStyle.n_stylegray,
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: AppColor.green,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
