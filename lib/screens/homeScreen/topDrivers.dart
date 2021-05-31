import 'package:f1app/components/roundedTopCornersTile.dart';
import 'package:f1app/screens/homeScreen/homeResultRow.dart';
import 'package:flutter/material.dart';

class TopDriversTile extends StatefulWidget {
  TopDriversTile({Key key}) : super(key: key);

  @override
  _TopDriversTileState createState() => _TopDriversTileState();
}

class _TopDriversTileState extends State<TopDriversTile> {
  @override
  Widget build(BuildContext context) {
    return RoundedTopCornersTile(
      title: "Top drivers:",
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
                  child: Text("Lewis Hamilton"),
                ),
                Text("Mercedes"),
                Text("94"),
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
                  child: Text("Lewis Hamilton"),
                ),
                Text("Mercedes"),
                Text("94"),
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
                  child: Text("Lewis Hamilton"),
                ),
                Text("Mercedes"),
                Text("94"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
