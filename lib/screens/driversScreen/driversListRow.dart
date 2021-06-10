import 'package:f1app/models/Drivers/Driver.dart';
import 'package:f1app/screens/driverInfoScreen/driverInfoScreen.dart';
import 'package:flutter/material.dart';

class DriversListRow extends StatelessWidget {
  const DriversListRow({Key? key, this.onTap, this.driver}) : super(key: key);

  final Function? onTap;
  final Driver? driver;

  @override
  Widget build(BuildContext context) {
    void openDriverInfoScreen() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DriverInfoScreen(
              driverName: (driver?.givenName.toString() ?? "") +
                  " " +
                  (driver?.familyName.toString() ?? ""),
              driverNumber: driver?.permanentNumber ?? "",
              dateOfBirth: driver?.dateOfBirth ?? "",
              nationality: driver?.nationality ?? "",
              code: driver?.code ?? "",
              url: driver?.url ?? "",
            ),
          ));
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(1, 4, 1, 4),
      child: Material(
        elevation: 2.0,
        child: InkWell(
          onTap: openDriverInfoScreen,
          child: Ink(
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  offset: Offset(6, 0),
                  color: Colors.black26,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text((driver?.givenName ?? "") + " " + (driver?.familyName ?? "")),
            ),
          ),
        ),
      ),
    );
  }
}
