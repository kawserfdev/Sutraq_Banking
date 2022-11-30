import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:spalsh_banking/Const/Style/FontStyle.dart';
import 'package:spalsh_banking/Const/appColor.dart';
import '../../../../../Const/AppString.dart';

class Enter_Transaction_Pin extends StatelessWidget {
  final String requiredNumber = '123456';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whaite,
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(children: [
            Icon(
              Icons.verified_user_outlined,
              color: AppColor.green,
              size: 50,
            ),
            Text(
              AppString.Enter_Transaction_PinTitle,
              style: FontStyle.b_24style,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AppString.Subtitle_transaction_pin,
              style: FontStyle.n_stylegray,
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                obscureText: true,
                cursorColor: AppColor.black,
                onChanged: (value) {
                  print(value);
                },
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    inactiveColor: AppColor.black,
                    activeColor: AppColor.green,
                    selectedColor: AppColor.gray),
                onCompleted: (value) {
                  if (value == requiredNumber) {
                  } else {
                    print('invalid pin');
                  }
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
