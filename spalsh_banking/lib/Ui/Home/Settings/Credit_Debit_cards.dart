import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spalsh_banking/Ui/Home/Card/add_new_Bank_Card.dart';

import '../../../Const/AppString.dart';
import '../../../Const/Style/FontStyle.dart';
import '../../../Const/appColor.dart';
import '../Wallets/add_new_bankAccount.dart';
import 'Settings.dart';

class Credit_Debit_cards extends StatefulWidget {
  @override
  State<Credit_Debit_cards> createState() => _Credit_Debit_cardsState();
}

class _Credit_Debit_cardsState extends State<Credit_Debit_cards> {
  var size, height, width;

  int _rValue = 0;

  void method(int value) {
    setState(() {
      _rValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.card_typesTitle,
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
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                child: Expanded(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 18, left: 18, right: 18, bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Radio(
                                value: 1,
                                groupValue: _rValue,
                                onChanged: (value) {
                                  method(value!);
                                },
                                activeColor: AppColor.green,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(AppString.card_type),
                            ],
                          ),
                          Container(
                            height: height / 3.5,
                            width: width / 1.5,
                            child: DecoratedBox(
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    AppString.images[2],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                AppString.Remove_text,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.red,
                                    fontSize: 10),
                              )),
                          Divider(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Radio(
                                value: 2,
                                groupValue: _rValue,
                                onChanged: (value) {
                                  method(value!);
                                },
                                activeColor: AppColor.green,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(AppString.card_type),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: height / 3.5,
                            width: width / 1.5,
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: DecoratedBox(
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      AppString.images[3],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                AppString.Remove_text,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.red,
                                    fontSize: 10),
                              )),
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
      ),
    );
  }
}
