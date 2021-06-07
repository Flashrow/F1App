import 'package:f1app/screens/resultsScreen/resultRow.dart';
import 'package:f1app/screens/resultsScreen/resultsTile.dart';
import 'package:flutter/material.dart';

class ResultsTab extends StatefulWidget {
  ResultsTab({Key? key}) : super(key: key);

  @override
  _ResultsTabState createState() => _ResultsTabState();
}

class _ResultsTabState extends State<ResultsTab> {
  @override
  Widget build(BuildContext context) {
    return ResultsTile(
        label: resultLabel(),
        child: SizedBox(
            height: 500,
            width: double.infinity,
            child: ListView(
              children: [
                ResultRow(),
                ResultRow(),
                ResultRow(),
                ResultRow(),
                ResultRow(),
                ResultRow(),
                ResultRow(),
                ResultRow(),
                ResultRow(),
              ],
            )));
  }

  Widget resultLabel() {
    return Row(
      children: [
        SizedBox(
          width: 38,
          child: Text("Pos",
              style: TextStyle(color: Theme.of(context).backgroundColor)),
        ),
        SizedBox(
          width: 165,
          child: Text("Driver",
              style: TextStyle(color: Theme.of(context).backgroundColor)),
        ),
        SizedBox(
          width: 115,
          child: Text("Time",
              style: TextStyle(color: Theme.of(context).backgroundColor)),
        ),
        Text("Pts",
              style: TextStyle(color: Theme.of(context).backgroundColor)),
      ],
    );
  }
}
