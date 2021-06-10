import 'package:dio/dio.dart';
import 'package:f1app/API/ErgastApi.dart';
import 'package:f1app/models/Drivers/Driver.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Drivers number test', () async {
    ErgastApi ergastApi = ErgastApi();
    print("test");
    Driver driver = (await ergastApi.getDriversList())?.first ?? Driver();
    print("Driver permanent number: " + driver.permanentNumber.toString());

    expect(driver.permanentNumber.toString(), "14");
  });
}
