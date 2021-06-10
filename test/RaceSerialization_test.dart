import 'package:dio/dio.dart';
import 'package:f1app/models/DataHolders/Ergast.dart';
import 'package:f1app/models/DataHolders/MRData.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

main() {
  test('Next race name test', () async {
    Ergast ergast = Ergast();
    var url = Uri.parse('http://ergast.com/api/f1/current/next.json');
    var response = await http.get(url);
    print('Response body: ${response.body}');
    ergast = Ergast.fromJson(jsonDecode(response.body));

    expect(
        ergast.mrData!.raceTable!.races!.first.raceName, "French Grand Prix");
  });

  test('Next race circuit test', () async {
    Ergast ergast = Ergast();
    var url = Uri.parse('http://ergast.com/api/f1/current/next.json');
    var response = await http.get(url);
    print('Response body: ${response.body}');
    ergast = Ergast.fromJson(jsonDecode(response.body));

    print("Next race circuit: " +
        ergast.mrData!.raceTable!.races!.first.circuit.toString());
    print("Next race circuit name: " +
        ergast.mrData!.raceTable!.races!.first.circuit!.circuitName.toString());

    expect(ergast.mrData!.raceTable!.races!.first.circuit!.circuitName,
        "Circuit Paul Ricard");
  });

  test('Date parse test', () async {
    Ergast ergast = Ergast();
    var url = Uri.parse('http://ergast.com/api/f1/current/next.json');
    var response = await http.get(url);
    print('Response body: ${response.body}');
    ergast = Ergast.fromJson(jsonDecode(response.body));

    String date = ergast.mrData!.raceTable!.races!.first.date.toString();
    String time = ergast.mrData!.raceTable!.races!.first.time.toString();
    print("Next race date: " + date);
    print("Next race time: " + time);

    DateTime nextRaceTime = DateTime.parse(date + " " + time);

    print("Next race parsed time: " + nextRaceTime.toString());
    expect(nextRaceTime, DateTime.parse("2021-06-20 13:00:00Z"));
  });

  test('Races count test', () async {
    Ergast ergast = Ergast();
    var url = Uri.parse('http://ergast.com/api/f1/current.json');
    var response = await http.get(url);
    print('Response body: ${response.body}');
    ergast = Ergast.fromJson(jsonDecode(response.body));

    print(ergast.mrData!.raceTable!.races.toString());

    String racesCount = ergast.mrData!.raceTable!.races!.length.toString();
    print("Races count: " + racesCount);

    expect(racesCount, "23");
  });

  test('Race result time test', () async {
    Ergast ergast = Ergast();
    var url = Uri.parse('https://ergast.com/api/f1/current/last/results.json');
    var response = await http.get(url);
    print('Response body: ${response.body}');
    ergast = Ergast.fromJson(jsonDecode(response.body));

    print("first race: " + ergast.mrData!.raceTable!.races!.first.toString());
    print("results: " + ergast.mrData!.raceTable!.races!.first.results!.toString());
    print("first result: " + ergast.mrData!.raceTable!.races!.first.results!.first.toString());
    print("time: " + ergast.mrData!.raceTable!.races!.first.results!.first.time.toString());
    print("time hour: " + ergast.mrData!.raceTable!.races!.first.results!.first.time!.time.toString());
    

    var time = ergast.mrData!.raceTable!.races!.first.results!.first.time!.time
        .toString();
    print(time);

    expect(time, "2:13:36.410");
  });
}
