import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/AppString.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Const/appColor.dart';

class Transaction_History extends StatefulWidget {
  const Transaction_History({super.key});

  @override
  State<Transaction_History> createState() => _Transaction_HistoryState();
}

class _Transaction_HistoryState extends State<Transaction_History> {
  var select = 'Select Account';
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(175),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: AppColor.black,
                        )),
                    Text(
                      AppString.transaction_histry,
                      style: FontStyle.b_20ffstyle,
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 50,
                  width: 270,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.green, width: 3)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(select),
                        DropdownButton(
                            iconSize: 50,
                            items: [
                              DropdownMenuItem(
                                  value: 'Sutraq Account ',
                                  child: Text('Sutraq Account')),
                              DropdownMenuItem(
                                  value: 'Bank Account',
                                  child: Text('Bank Account')),
                            ],
                            onChanged: (value) {
                              setState(() {
                                select = value!;
                              });
                            })
                      ],
                    ),
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
          ]),
        ),
      ),
    );
  }
}
