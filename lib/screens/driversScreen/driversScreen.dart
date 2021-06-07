import 'package:f1app/components/roundedTopCornersTile.dart';
import 'package:f1app/screens/driverInfoScreen/driverInfoScreen.dart';
import 'package:f1app/screens/driversScreen/driversListRow.dart';
import 'package:flutter/material.dart';

class DriversScreen extends StatefulWidget {
  const DriversScreen({Key? key}) : super(key: key);

  @override
  _DriversScreenState createState() => _DriversScreenState();
}

class _DriversScreenState extends State<DriversScreen> {
  void openDriverInfoScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DriverInfoScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
      child: RoundedTopCornersTile(
        title: "Select driver:",
        child: Expanded(
          child: ListView(
            children: [
              DriversListRow(onTap: openDriverInfoScreen,),
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
