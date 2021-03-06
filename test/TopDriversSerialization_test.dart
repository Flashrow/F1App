import 'package:dio/dio.dart';
import 'package:f1app/models/DataHolders/Ergast.dart';
import 'package:f1app/models/DataHolders/MRData.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

main() {
  test('Drivers standings serialization test', () async {
    Ergast ergast = new Ergast();

    var url = Uri.parse('http://ergast.com/api/f1/2021/driverStandings.json');
    var response = await http.get(url);

    print('Response body: ${response.body}');

    ergast = Ergast.fromJson(jsonDecode(response.body));

    expect(
        ergast.mrData!.standingsTable!.standingsList![0].driverStandings![0]
            .driver!.familyName,
        "Verstappen");
  });

  test('Driver constructor test', () async {
    Ergast ergast = new Ergast();

    var url = Uri.parse('http://ergast.com/api/f1/2021/driverStandings.json');
    var response = await http.get(url);

    print('Response body: ${response.body}');

    ergast = Ergast.fromJson(jsonDecode(response.body));

    print('Driver constructor: ' +
        ergast.mrData!.standingsTable!.standingsList!.first.driverStandings!
            .first.constructor!.first
            .toString());

    expect(
        ergast.mrData!.standingsTable!.standingsList![0].driverStandings![0]
            .constructor!.first.name,
        "Red Bull");
  });
  
  test('Drivers standings serialization test', () async {
    MRData mrData = new MRData();

    var url = Uri.parse('http://ergast.com/api/f1/2021/driverStandings.json');
    var response = await http.get(url);

    print('Response body: ${response.body}');

    mrData = MRData.fromJson(jsonDecode(response.body)["MRData"]);

    print('MRdata: ' + mrData.toString());
    print('MRdata total: ' + mrData.total.toString());
    print('Standings Table: ' + mrData.standingsTable.toString());
    print(
        'Standings Lists: ' + mrData.standingsTable!.standingsList.toString());
    print('Driver Standings: ' +
        mrData.standingsTable!.standingsList!.first.driverStandings.toString());
    print('Driver Standing: ' +
        mrData.standingsTable!.standingsList!.first.driverStandings!.first
            .toString());
    print('Driver: ' +
        mrData
            .standingsTable!.standingsList!.first.driverStandings!.first.driver
            .toString());

    expect(
        mrData.standingsTable!.standingsList![0].driverStandings![0].driver!
            .familyName,
        "Verstappen");
  });
}
