import 'package:dio/dio.dart';
import 'package:f1app/API/ErgastApi.dart';
import 'package:f1app/models/DataHolders/Ergast.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

main() {
  test('Main api test', () async {
    ErgastApi ergastApi = ErgastApi();

    print(await ergastApi.getTopThreeDrivers());

    String teamName = (await ergastApi.getTopThreeDrivers()).first.team!;


    print((await ergastApi.getTopThreeDrivers()).toString());

    expect(teamName, "Red Bull");
  });
}
