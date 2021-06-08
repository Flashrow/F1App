import 'package:f1app/API/ErgastApi.dart';
import 'package:f1app/components/roundedTopCornersTile.dart';
import 'package:f1app/models/Drivers/DriverStandingData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopDriversTile extends StatefulWidget {
  TopDriversTile({Key? key}) : super(key: key);

  @override
  _TopDriversTileState createState() => _TopDriversTileState();
}

class _TopDriversTileState extends State<TopDriversTile> {
  List<Icon> podiumIcons = [
    Icon(
      Icons.looks_one,
      color: Colors.yellow,
    ),
    Icon(
      Icons.looks_two,
      color: Colors.grey,
    ),
    Icon(
      Icons.looks_3,
      color: Colors.brown,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  _getDriverStandings() {
    return context.read<ErgastApi>().getTopThreeDrivers();
  }

  @override
  Widget build(BuildContext context) {
    return RoundedTopCornersTile(
      title: "Top drivers:",
      child: FutureBuilder(
        future: _getDriverStandings(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          List<DriverStandingData> driverStanding = snapshot.data;

          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Table(
              columnWidths: const <int, TableColumnWidth>{
                0: IntrinsicColumnWidth(),
                1: FixedColumnWidth(200),
                2: FixedColumnWidth(100),
                3: FixedColumnWidth(50),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    Container(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                      child: Text(
                        "Driver",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Team",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Points",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                for (int i = 0; i < podiumIcons.length; i++)
                  buildTableRow(driverStanding[i], podiumIcons[i]),
              ],
            ),
          );
        },
      ),
    );
  }

  TableRow buildTableRow(DriverStandingData driverStanding, Icon icon) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: Text(driverStanding.name.toString()),
        ),
        Text(driverStanding.team.toString()),
        Text(driverStanding.points.toString()),
      ],
    );
  }
}