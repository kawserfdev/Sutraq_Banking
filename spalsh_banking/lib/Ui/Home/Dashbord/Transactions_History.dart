import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/AppString.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Const/appColor.dart';

class Transaction_History extends StatelessWidget {
  const Transaction_History({super.key});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(155),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: AppColor.black,
                        )),
                  ),
                  Center(
                    child: Text(
                      AppString.transaction_histry,
                      style: FontStyle.b_20ffstyle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.green, width: 3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(AppString.account_no),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_downward,
                        color: AppColor.green,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TabBar(labelColor: AppColor.black, tabs: [
                Tab(
                  text: AppString.subtitle_transaction_histry1,
                ),
                Tab(
                  text: AppString.subtitle_transaction_histry2,
                ),
                Tab(
                  text: AppString.subtitle_transaction_histry3,
                ),
              ]),
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
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
                          style: FontStyle.b_12styledarkblue,
                        ),
                        subtitle: Text(
                          AppString.date,
                          style: FontStyle.n_stylegray,
                        ),
                        trailing:
                            Text(AppString.amount, style: FontStyle.b_15style),
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
          Container(
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
                          style: FontStyle.b_12styledarkblue,
                        ),
                        subtitle: Text(
                          AppString.date,
                          style: FontStyle.n_stylegray,
                        ),
                        trailing:
                            Text(AppString.amount, style: FontStyle.b_15style),
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
          Container(
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
                          style: FontStyle.b_12styledarkblue,
                        ),
                        subtitle: Text(
                          AppString.date,
                          style: FontStyle.n_stylegray,
                        ),
                        trailing:
                            Text(AppString.amount, style: FontStyle.b_15style),
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
        ]),
      ),
    );
  }
}
