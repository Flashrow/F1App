import 'package:f1app/components/roundedTopCornersTile.dart';
import 'package:flutter/material.dart';

class NextEventTimer extends StatefulWidget {
  NextEventTimer({Key key}) : super(key: key);

  @override
  _NextEventTimerState createState() => _NextEventTimerState();
}

class _NextEventTimerState extends State<NextEventTimer> {
  @override
  Widget build(BuildContext context) {
    return RoundedTopCornersTile(
      title: "Next Grand Prix:",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
            child: Text(
              "Monaco Grand Prix",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            "Circuit de Monaco",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
            child: Text(
              "Starts in:",
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 14, 40, 0),
            child: SizedBox(
              height: 60,
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: 3,
                children: <Widget>[
                  Text("7", textAlign: TextAlign.center, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text("36", textAlign: TextAlign.center, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text("54", textAlign: TextAlign.center, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text("days", textAlign: TextAlign.center),
                  Text("hours", textAlign: TextAlign.center),
                  Text("minutes", textAlign: TextAlign.center),
                  Text("seconds", textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
