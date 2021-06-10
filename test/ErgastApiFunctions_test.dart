import 'package:dio/dio.dart';
import 'package:f1app/API/ErgastApi.dart';
import 'package:f1app/models/DataHolders/Ergast.dart';
import 'package:f1app/models/Race/Result.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

main() {
  test('Main api getTopThreeDrivers test', () async {
    ErgastApi ergastApi = ErgastApi();

    print(await ergastApi.getTopThreeDrivers());

    String teamName = (await ergastApi.getTopThreeDrivers()).first.team!;

    print((await ergastApi.getTopThreeDrivers()).toString());

    expect(teamName, "Red Bull");
  });

  test('Main api getTopThreeConstructors test', () async {
    ErgastApi ergastApi = ErgastApi();

    print("getTopThreeConstructors: " + (await ergastApi.getTopThreeConstructors()).toString());

    String teamNationality = (await ergastApi.getTopThreeConstructors()).first.nationality!;

    print((await ergastApi.getTopThreeDrivers()).toString());

    expect(teamNationality, "Austrian");
  });

  test('Main api getRaceResult text', () async {
    ErgastApi ergastApi = ErgastApi();
    List<Result>? results = (await ergastApi.getRaceResults("2021","5"));
    print("results: " + results.toString());
    print("results first: " + results!.first.toString());
    print("time: " + results.first.time.toString());
    print("time: " + results.first.time!.time.toString());
  });

  test('Main api getRoundsNumber text', () async {
    ErgastApi ergastApi = ErgastApi();
    String rounds = (await ergastApi.getRoundsNumber("2021")).toString();
    print("getRaceResult: " + rounds);
    expect(rounds, "23");
  });
}
