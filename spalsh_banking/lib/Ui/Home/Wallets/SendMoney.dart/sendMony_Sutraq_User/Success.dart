import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import '../../../../../Const/AppString.dart';
import '../../../../../Const/appColor.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkblue,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          elevation: 5,
          title: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    size: 70,
                    color: AppColor.green,
                  ),
                  Text(
                    AppString.Success_title,
                    style: FontStyle.b_17style,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      AppString.subtitle_success,
                      style: FontStyle.b_10stylegray,
                    ),
                  )
                ],
              )),
              
          content: new Column(
            children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppString.From_text,style: FontStyle.b_styledarkblue,),
                        SizedBox(
                          height: 5,
                        ),
                         Text(AppString.card_categoryText,style: FontStyle.n_stylegray,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(AppString.card_holdername,style: FontStyle.b_styledarkblue,),
                        SizedBox(
                          height: 5,
                        ),
                         Text(AppString.card,style: FontStyle.n_stylegray,),
                      ],
                    ),
                  ],
                 ),
                 Divider(height: 25,),
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppString.to_text,style: FontStyle.b_styledarkblue,),
                        SizedBox(
                          height: 5,
                        ),
                         Text(AppString.bank_Accountstext,style: FontStyle.n_stylegray,),
                         SizedBox(
                          height: 5,
                        ),
                         Text(AppString.bank_name_text,style: FontStyle.n_stylegray,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Idris Lawal',style: FontStyle.b_styledarkblue,),
                        SizedBox(
                          height: 5,
                        ),
                         Text(AppString.account_Number,style: FontStyle.n_stylegray,),
                         SizedBox(
                          height: 5,
                        ),
                         Text(AppString.card2,style: FontStyle.n_stylegray,),
                      ],
                    ),
                  ],
                 ),
                 Divider(
                  height: 25,
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppString.date_text,style: FontStyle.b_styledarkblue,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(AppString.date,style: FontStyle.b_styledarkblue,),
                        SizedBox(
                          height: 5,
                        ),
                         Text(AppString.timeonly,style: FontStyle.n_stylegray,),
                      ],
                    ),
                  ],
                 ),
                 Divider(
                  height: 25,
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppString.total_text,style: FontStyle.b_styledarkblue,),
                    Text(AppString.total,style: FontStyle.b_styledarkblue,),
                  ],
                 ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.receipt_long,color: AppColor.gray,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(AppString.Download_Receipttext,style: FontStyle.b_stylegray,)
                  ],
                )
            ],
          ),
          actions: [
            InkWell(
              onTap: () {},
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
                  AppString.DONE,
                  style: FontStyle.b_17styleC,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
