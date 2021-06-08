import 'package:f1app/API/ErgastApi.dart';
import 'package:f1app/API/TopStandings/TopStandingsApi.dart';
import 'package:dio/dio.dart';
import 'package:f1app/components/mainPattern/mainPattern.dart';
import 'package:f1app/models/DataHolders/Ergast.dart';
import 'package:f1app/screens/driverInfoScreen/driverInfoScreen.dart';
import 'package:f1app/screens/driversScreen/driversScreen.dart';
import 'package:f1app/screens/homeScreen/homeScreen.dart';
import 'package:f1app/screens/resultsScreen/resultsScreen.dart';
import 'package:f1app/utils/colorTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ErgastApi>(
        create: (_) => ErgastApi(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final ColorTheme colorTheme = ColorTheme();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: colorTheme.themeData,
      home: MainPattern(
        body: HomeScreen(),
      ),
    );
  }
}
