import 'package:f1app/API/ErgastApi.dart';
import 'package:f1app/components/roundedTopCornersTile.dart';
import 'package:f1app/models/Drivers/Driver.dart';
import 'package:f1app/screens/driversScreen/driversListRow.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DriversScreen extends StatefulWidget {
  const DriversScreen({Key? key}) : super(key: key);

  @override
  _DriversScreenState createState() => _DriversScreenState();
}

class _DriversScreenState extends State<DriversScreen> {
  List<Driver> driversList = [];

  _getDrivers() {
    return context.read<ErgastApi>().getDriversList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
      child: RoundedTopCornersTile(
        title: "Select driver:",
        child: Expanded(
          child: FutureBuilder(
            future: _getDrivers(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return Center(child: CircularProgressIndicator());
              else if (snapshot.hasData) {
                driversList = snapshot.data;
              } else if (snapshot.hasError)
                return Text("ERROR: ${snapshot.error}");
              else
                return Text('None');

              return ListView.builder(
                itemCount: driversList.length,
                itemBuilder: (BuildContext context, int index) {
                  return DriversListRow(driver: driversList[index]);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
