import 'package:f1app/API/ErgastApi.dart';
import 'package:f1app/components/roundedTopCornersTile.dart';
import 'package:f1app/models/Constructors/ConstructorStandingData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopTeamsTile extends StatefulWidget {
  TopTeamsTile({Key? key}) : super(key: key);

  @override
  _TopTeamsTileState createState() => _TopTeamsTileState();
}

class _TopTeamsTileState extends State<TopTeamsTile> {
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

  _getConstructorStandings() {
    return context.read<ErgastApi>().getTopThreeConstructors();
  }

  @override
  Widget build(BuildContext context) {
    return RoundedTopCornersTile(
      title: "Top teams:",
      child: FutureBuilder(
        future: _getConstructorStandings(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          List<ConstructorStandingData> constructorStanding = List<ConstructorStandingData>.filled(3, ConstructorStandingData());
          if(snapshot.data != null)
            constructorStanding = snapshot.data;  

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
                        "Constructor",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Nationality",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Points",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                for (int i = 0; i < podiumIcons.length; i++)
                  buildTableRow(constructorStanding[i], podiumIcons[i]),
              ],
            ),
          );
        },
      ),
    );
  }

  TableRow buildTableRow(
      ConstructorStandingData constructorStanding, Icon icon) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: Text(constructorStanding.name.toString()),
        ),
        Text(constructorStanding.nationality.toString()),
        Text(constructorStanding.points.toString()),
      ],
    );
  }
}
