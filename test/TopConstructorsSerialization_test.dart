import 'package:dio/dio.dart';
import 'package:f1app/models/DataHolders/Ergast.dart';
import 'package:f1app/models/DataHolders/MRData.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

main() {
  test('Constructors test', () async {
    Ergast ergast = new Ergast();

    var url =
        Uri.parse('https://ergast.com/api/f1/2021/constructorStandings.json');
    var response = await http.get(url);

    print('Response body: ${response.body}');

    ergast = Ergast.fromJson(jsonDecode(response.body));
    String name = ergast.mrData!.standingsTable!.standingsList!.first
        .constructorStandings!.first.constructor!.name
        .toString();
    print('Constructor name: ' + name);

    expect(name, "Red Bull");
  });


  test('Constructors standings serialization test', () async {
    MRData mrData = new MRData();

    var url =
        Uri.parse('http://ergast.com/api/f1/current/constructorStandings.json');
    var response = await http.get(url);

    print('Response body: ${response.body}');

    mrData = MRData.fromJson(jsonDecode(response.body)["MRData"]);

    print('MRdata: ' + mrData.toString());
    print('MRdata total: ' + mrData.total.toString());
    print('Standings Table: ' + mrData.standingsTable.toString());
    print(
        'Standings Lists: ' + mrData.standingsTable!.standingsList.toString());

    expect(
        mrData.standingsTable!.standingsList![0].constructorStandings!.first
            .constructor!.name,
        "Red Bull");
  });
}
