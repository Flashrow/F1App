import 'package:f1app/screens/homeScreen/nextEventTimer.dart';
import 'package:f1app/screens/homeScreen/topDrivers.dart';
import 'package:f1app/screens/homeScreen/topTeams.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NextEventTimer(),
          TopDriversTile(),
          TopTeamsTile(),
        ],
      ),
    );
  }
}