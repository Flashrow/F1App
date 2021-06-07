import 'package:f1app/components/roundedTopCornersTile.dart';
import 'package:flutter/material.dart';

class TopTeamsTile extends StatefulWidget {
  TopTeamsTile({Key? key}) : super(key: key);

  @override
  _TopTeamsTileState createState() => _TopTeamsTileState();
}

class _TopTeamsTileState extends State<TopTeamsTile> {
  @override
  Widget build(BuildContext context) {
    return RoundedTopCornersTile(
      title: "Top teams:",
      child: Padding(
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
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: Icon(
                    Icons.looks_one,
                    color: Colors.yellow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text("Mercedes"),
                ),
                Text("German"),
                Text("141"),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: Icon(
                    Icons.looks_two,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text("Red Bull"),
                ),
                Text("Austrian"),
                Text("112"),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: Icon(
                    Icons.looks_3,
                    color: Colors.brown,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text("McLaren"),
                ),
                Text("British"),
                Text("65"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}