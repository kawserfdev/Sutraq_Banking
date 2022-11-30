import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:spalsh_banking/Const/appColor.dart';
import 'package:spalsh_banking/Ui/Login/Idia.dart';
import '../Login/login.dart';

class Onbording_screen extends StatefulWidget {
  @override
  State<Onbording_screen> createState() => _Onbording_screenState();
}

class _Onbording_screenState extends State<Onbording_screen> {
  PageController _pageController = PageController();
  double currentPage = 0;
  List _image = [
    "assets/image/Frame2.png",
    "assets/image/Frame.png",
    "assets/image/Group.png",
  ];

  List _title = ['Send Money Anywhere', 'Safe & Secured', 'Unbeatable Support'];

  List _description = [
    'With our unique technology, you can get\n money anywhere in the world.',
    'Safety of your funds is guaranteed. We’ve\n got you covered 24/7.',
    'Send money to other sutraq users free of\n charge, with no additional fee.'
  ];

  int _currentIndex = 0;

  final _totalDots = 3;

  double _currentPosition = 0.0;

  double _validPosition(double position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1.0;
    return position;
  }

  @override
  Widget build(BuildContext context) {
    String getPrettyCurrPosition() {
      return (_currentIndex + 1.0).toStringAsPrecision(3);
    }

    void _updatePosition(double position) {
      setState(() => _currentPosition = _validPosition(position));
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        _image[_currentIndex],
                        scale: 2,
                      ),
                    ),
                    DotsIndicator(
                      dotsCount: _image.length,
                      position: _currentPosition,
                      decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  color: AppColor.green,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        _title[_currentIndex],
                        style: TextStyle(
                            fontSize: 30, color: AppColor.backHoneyDew),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      _description[_currentIndex],
                      style:
                          TextStyle(color: AppColor.backHoneyDew, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 100, right: 100),
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {});
                            if (_currentIndex == 2) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login_Screen()),
                              );
                            } else {
                              _currentIndex++;
                              _currentPosition++;
                            }
                          },
                          child:
                              _currentIndex == 2 ? Text('Login') : Text('Next'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 0, 5, 0)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'TRY SUTRAQ',
                      style: TextStyle(color: AppColor.backHoneyDew),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
