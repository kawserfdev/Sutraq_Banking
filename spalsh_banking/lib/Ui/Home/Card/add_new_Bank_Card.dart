import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Ui/Home/Card/add_card.dart';
import '../../../Const/AppString.dart';
import '../../../Const/appColor.dart';

class Add_new_Bank_Card extends StatelessWidget {
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
                context, MaterialPageRoute(builder: (context) => Add_Card()));
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
            Expanded(
              child: Stack(
                  fit: StackFit.loose,
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Container(
                        height: 450,
                        width: double.infinity,
                        margin: EdgeInsets.all(16.0),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 100, left: 18, right: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    AppString.card_Number,
                                    style: FontStyle.n_stylegray,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2.0, color: AppColor.gray)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(AppString.your_card_Number),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                AppString.expiry_Date,
                                                style: FontStyle.n_stylegray,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              height: 60,
                                              width: width / 2,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 2.0,
                                                      color: AppColor.gray)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Center(
                                                    child: Text(
                                                        AppString.month_year)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                AppString.cvv,
                                                style: FontStyle.n_stylegray,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              height: 60,
                                              width: width / 2,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 2.0,
                                                      color: AppColor.gray)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Center(
                                                    child: Text(AppString.cvv)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 25),
                                InkWell(
                                  onTap: () {},
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
                        ),
                      ),
                    ),
                    Container(
                      height: height / 4,
                      width: width / 1.5,
                      child: Padding(
                        padding: EdgeInsets.all(1),
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
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
