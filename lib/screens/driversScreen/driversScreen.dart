import 'package:f1app/components/roundedTopCornersTile.dart';
import 'package:f1app/screens/driversScreen/driversListRow.dart';
import 'package:flutter/material.dart';

class DriversScreen extends StatefulWidget {
  DriversScreen({Key key}) : super(key: key);

  @override
  _DriversScreenState createState() => _DriversScreenState();
}

class _DriversScreenState extends State<DriversScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
      child: RoundedTopCornersTile(
        title: "Select driver:",
        child: Expanded(
          child: ListView(
            children: [
              DriversListRow(),
              DriversListRow(),
              DriversListRow(),
              DriversListRow(),
              DriversListRow(),
              DriversListRow(),
              DriversListRow(),
              DriversListRow(),
              DriversListRow(),
              DriversListRow(),
              DriversListRow(),
              DriversListRow(),
              DriversListRow(),
              DriversListRow(),
            ],
          ),
        ),
      ),
    );
  }
}
