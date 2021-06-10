import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import 'package:f1app/components/mainPattern/navigationBar.dart';
import 'package:f1app/screens/driversScreen/driversScreen.dart';
import 'package:f1app/screens/homeScreen/homeScreen.dart';
import 'package:f1app/screens/resultsScreen/resultsScreen.dart';
import 'package:flutter/material.dart';

class MainPattern extends StatefulWidget {
  MainPattern({Key? key, this.body}) : super(key: key);

  final Widget? body;
  @override
  _MainPatternState createState() => _MainPatternState();
}

class _MainPatternState extends State<MainPattern> {
  int _selectedIndex = 1;

  static const List<Widget> _widgetOptions = <Widget>[
    DriversScreen(),
    HomeScreen(),
    ResultsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("F1App"),
      ),
      bottomNavigationBar: NavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
      body: 
      BottomBarPageTransition(
        builder: (_, index) => _widgetOptions.elementAt(index),
        currentIndex: _selectedIndex,
        totalLength: 3,
        transitionType: TransitionType.slide,
        transitionDuration: Duration(milliseconds: 100),
        transitionCurve: Curves.easeIn,
      ),
    );
  }
}
