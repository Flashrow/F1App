import 'package:dio/dio.dart';
import 'package:f1app/API/TopStandings/TopStandingsApi.dart';
import 'package:f1app/models/Constructors/ConstructorStanding.dart';
import 'package:f1app/models/Constructors/ConstructorStandingData.dart';
import 'package:f1app/models/Drivers/Driver.dart';
import 'package:f1app/models/Drivers/DriverStanding.dart';
import 'package:f1app/models/Drivers/DriverStandingData.dart';
import 'package:f1app/models/Race/Race.dart';
import 'package:f1app/models/Race/Result.dart';
import 'package:flutter/material.dart';

import 'Drivers/DriversApi.dart';
import 'Race/RaceApi.dart';

class ErgastApi with ChangeNotifier {

  late TopStandingsApi topStandingsApi;
  late RaceApi raceApi;
  late DriversApi driversApi;
  
  Dio _dio = Dio();

  ErgastApi() {
    topStandingsApi = TopStandingsApi(_dio);
    raceApi = RaceApi(_dio);
    driversApi = DriversApi(_dio);
  }

  Future<Race> nextRace() async{
    Race nextRace = (await raceApi.getNextRace()).mrData!.raceTable!.races!.first;
    return nextRace;
  }

  Future<List<DriverStandingData>> getTopThreeDrivers() async {
    List<DriverStandingData> topDriverStandings =[];
    List<DriverStanding>? driverStandings = [];
    driverStandings = (await topStandingsApi.getDriversStandings()).mrData!.standingsTable!.standingsList!.first.driverStandings;

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
    constructorStandings = (await topStandingsApi.getConstructorsStandings()).mrData!.standingsTable!.standingsList!.first.constructorStandings;

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

  Future<List<Result>?> getRaceResults(String year, String round) async {
    List<Result>? result = [];
    String raceIndex = year + "/" + round;
    List<Race>? races = (await raceApi.getRaceResult(raceIndex)).mrData?.raceTable?.races;
    if(races!.length > 0)
    result = races.first.results;
    else
    result = [];
    return result;
  }

  Future<int> getRoundsNumber(String year) async {
    int rounds = (await raceApi.getRaceSchedule(year)).mrData!.raceTable!.races!.length;
    return rounds;
  }

  Future<List<Driver>?> getDriversList() async {
    List<Driver>? drivers;
    drivers = (await driversApi.getDrivers()).mrData!.driverTable!.drivers;
    return drivers;
  }
}

