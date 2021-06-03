import 'package:f1app/screens/resultsScreen/resultRow.dart';
import 'package:f1app/screens/resultsScreen/resultsTile.dart';
import 'package:flutter/material.dart';

class ResultsTab extends StatefulWidget {
  ResultsTab({Key key}) : super(key: key);

  @override
  _ResultsTabState createState() => _ResultsTabState();
}

class _ResultsTabState extends State<ResultsTab> {
  @override
  Widget build(BuildContext context) {
    return ResultsTile(
        label: resultLabel(),
        child: SizedBox(
            height: 300,
            width: double.infinity,
            child: ListView(
              children: [
                ResultRow(),
              ],
            )));
  }

  Widget resultLabel() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
          child: Text("Pos",
              style: TextStyle(color: Theme.of(context).backgroundColor)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
          child: Text("Driver",
              style: TextStyle(color: Theme.of(context).backgroundColor)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
          child: Text("Time",
              style: TextStyle(color: Theme.of(context).backgroundColor)),
        ),
        Text("Points",
            style: TextStyle(color: Theme.of(context).backgroundColor)),
      ],
    );
  }
}
