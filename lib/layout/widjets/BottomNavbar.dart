import 'package:flutter/material.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/layout/screens/OptionAnalysis.dart';
import 'package:grow_up/layout/screens/Portfolio.dart';
import 'package:grow_up/layout/screens/Setting.dart';
import 'package:grow_up/layout/screens/home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State {
  int _selectedTab = 0;

  final List _pages = [
    const HomePage(),
    const OpstionAnalysis(),
    const Portfolio(),
    const Setting(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(MyImages.pesrson),
          )
        ],
        title: Text('Grow up',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: MyClass.kPrimaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.signal_cellular_alt), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
    );
  }
}
