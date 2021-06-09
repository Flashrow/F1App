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

    print("Next race circuit: " + ergast.mrData!.raceTable!.races!.first.circuit.toString());
    print("Next race circuit name: " + ergast.mrData!.raceTable!.races!.first.circuit!.circuitName.toString());

    expect(
        ergast.mrData!.raceTable!.races!.first.circuit!.circuitName, "Circuit Paul Ricard");
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
    expect(
        nextRaceTime, DateTime.parse("2021-06-20 13:00:00Z"));
  });
}
