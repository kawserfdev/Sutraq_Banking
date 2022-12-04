import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spalsh_banking/Ui/Home/Card/Cards.dart';
import 'package:spalsh_banking/Ui/Home/Dashbord/Dashboard.dart';
import 'package:spalsh_banking/Ui/Home/Settings/Settings.dart';
import 'package:spalsh_banking/Ui/Home/Wallets/Wallet.dart';
import 'Wallets/FoundWallet/Fount_wallet2.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    Dashboard_screen(),
    My_Walets(),
    My_Cards(),
    Settings_screen()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: Colors.purple,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.dashboard,
                ),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.wallet,
                  ),
                  label: 'Wallet'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.card_giftcard,
                  ),
                  label: 'Cards'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                  ),
                  label: 'Settings'),
            ]),
        body: _pages[_currentIndex]);
  }
}
