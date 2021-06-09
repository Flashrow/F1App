import 'dart:async';

import 'package:f1app/API/ErgastApi.dart';
import 'package:f1app/components/roundedTopCornersTile.dart';
import 'package:f1app/models/HomeSceenTimer.dart';
import 'package:f1app/models/Race/Race.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class NextEventTimer extends StatefulWidget {
  NextEventTimer({Key? key}) : super(key: key);

  @override
  _NextEventTimerState createState() => _NextEventTimerState();
}

class _NextEventTimerState extends State<NextEventTimer> {
  HomeScreenTimer nextEventTimer = HomeScreenTimer();
  DateTime nextEventTime = DateTime.now();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Race nextRace = Race();

    return FutureBuilder(
      future: context.read<ErgastApi>().nextRace(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.data != null) {
          nextRace = snapshot.data;
        } else {
          return Container();
        }

        nextEventTime = DateTime.parse(
              nextRace.date.toString() + " " + nextRace.time.toString());

        return RoundedTopCornersTile(
          title: "Next Grand Prix:",
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
                child: Text(
                  nextRace.raceName.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                nextRace.circuit!.circuitName.toString(),
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
                      Text(
                        (nextEventTimer.duration.inDays).toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        (nextEventTimer.duration.inHours % 24).toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        (nextEventTimer.duration.inMinutes % 60).toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        (nextEventTimer.duration.inSeconds % 60).toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
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
      },
    );
  }

  Timer startTimer() {
    const oneSec = const Duration(seconds: 1);
    return new Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          print("NextEventTimer: " + nextEventTimer.toString());
          print("NextEventTime: " + nextEventTime.toString());
          if (nextEventTimer != null) {
            nextEventTimer.updateTimer(nextEventTime);
          }
        });
      },
    );
  }
}
