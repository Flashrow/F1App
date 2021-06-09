import 'package:dio/dio.dart';
import 'package:f1app/API/TopStandings/TopStandingsApi.dart';
import 'package:f1app/models/Constructors/ConstructorStanding.dart';
import 'package:f1app/models/Constructors/ConstructorStandingData.dart';
import 'package:f1app/models/Drivers/DriverStanding.dart';
import 'package:f1app/models/Drivers/DriverStandingData.dart';
import 'package:f1app/models/Race/Race.dart';
import 'package:flutter/material.dart';

import 'Race/RaceApi.dart';

class ErgastApi with ChangeNotifier {

  late TopStandingsApi topStandings;
  late RaceApi race;

  Dio _dio = Dio();

  ErgastApi() {
    topStandings = TopStandingsApi(_dio);
    race = RaceApi(_dio);
  }

  Future<Race> nextRace() async{
    Race nextRace = (await race.getNextRace()).mrData!.raceTable!.races!.first;
    return nextRace;
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

  Future<List<ConstructorStandingData>> getTopThreeConstructors() async {
    List<ConstructorStandingData> topConstructorStandings =[];
    List<ConstructorStanding>? constructorStandings = [];
    constructorStandings = (await topStandings.getConstructorsStandings()).mrData!.standingsTable!.standingsList!.first.constructorStandings;

    for(int i = 0; i < 3; i++){
      ConstructorStandingData constructor = ConstructorStandingData();
      constructor.name = constructorStandings![i].constructor!.name.toString();
      constructor.points = constructorStandings[i].points;
      constructor.position = int.parse(constructorStandings[i].position!);
      constructor.nationality = constructorStandings[i].constructor!.nationality;

      topConstructorStandings.add(constructor);
    }

    return topConstructorStandings;
  }

}

