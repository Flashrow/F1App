import 'package:f1app/API/ErgastApi.dart';
import 'package:f1app/models/Race/Result.dart';
import 'package:f1app/models/RacePickerInfoProvider.dart';
import 'package:f1app/screens/resultsScreen/resultRow.dart';
import 'package:f1app/screens/resultsScreen/resultsTile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultsTab extends StatefulWidget {
  ResultsTab({Key? key}) : super(key: key);

  @override
  _ResultsTabState createState() => _ResultsTabState();
}

class _ResultsTabState extends State<ResultsTab> {
  List<Result> results = [];
  String year = "current";
  String round = "last";

  _getResults() {
    return context.read<ErgastApi>().getRaceResults(year, round);
  }

  @override
  Widget build(BuildContext context) {
    year = context.watch<RacePickerInfoProvider>().year.toString();
    round = context.watch<RacePickerInfoProvider>().round.toString();
    return ResultsTile(
        label: resultLabel(),
        child: FutureBuilder(
          future: _getResults(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());
            else if (snapshot.hasData) {
              results = snapshot.data;
            } else if (snapshot.hasError)
              return Text("ERROR: ${snapshot.error}");
            else
              return Text('None');
            
            if(results.isEmpty)
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: Text("There is no data for this race or race yet not started"),
            );

            return Expanded(
              child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: results.length,
                    itemBuilder: (BuildContext context, int index) => ResultRow(
                      pos: results[index].position,
                      name: results[index].driver!.givenName.toString() +
                          " " +
                          results[index].driver!.familyName.toString(),
                      time: results[index].time?.time.toString() ??
                          results[index].status.toString(),
                      pts: results[index].points.toString(),
                    ),
                  )),
            );
          },
        ));
  }

  Widget resultLabel() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text("Pos",
              style: TextStyle(color: Theme.of(context).backgroundColor)),
        ),
        Expanded(
          flex: 4,
          child: Text("Driver",
              style: TextStyle(color: Theme.of(context).backgroundColor)),
        ),
        Expanded(
          flex: 3,
          child: Text("Time",
              style: TextStyle(color: Theme.of(context).backgroundColor)),
        ),
        Expanded(
          flex: 1,
          child: Text("Pts",
              style: TextStyle(color: Theme.of(context).backgroundColor)),
        ),
      ],
    );
  }
}
