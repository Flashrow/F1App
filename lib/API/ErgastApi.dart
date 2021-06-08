import 'package:dio/dio.dart';
import 'package:f1app/API/TopStandings/TopStandingsApi.dart';
import 'package:f1app/models/Drivers/DriverStanding.dart';
import 'package:f1app/models/Drivers/DriverStandingData.dart';
import 'package:flutter/material.dart';

class ErgastApi with ChangeNotifier {

  late TopStandingsApi topStandings;
  Dio _dio = Dio();

  ErgastApi() {
    topStandings = TopStandingsApi(_dio);
  }

  Future<List<DriverStandingData>> getTopThreeDrivers() async {
    List<DriverStandingData> topDriverStandings =[];
    List<DriverStanding>? driverStandings = [];
    driverStandings = (await topStandings.getDriversStandings()).mrData!.standingsTable!.standingsList!.first.driverStandings;

    for(int i = 0; i < 3; i++){
      DriverStandingData driver = DriverStandingData();
      driver.name = driverStandings![i].driver!.givenName.toString() + " " + driverStandings[i].driver!.familyName.toString();
      driver.points = driverStandings[i].points;
      driver.position = int.parse(driverStandings[i].position!);
      driver.team = driverStandings[i].constructor!.first.name;

      topDriverStandings.add(driver);
    }

    return topDriverStandings;
  }

}

