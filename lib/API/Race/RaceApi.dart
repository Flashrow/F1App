import 'package:dio/dio.dart';
import 'package:f1app/models/DataHolders/Ergast.dart';
import 'package:f1app/models/Race/Race.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';

part 'RaceApi.g.dart';

@RestApi(baseUrl: 'http://ergast.com/api/f1')
abstract class RaceApi{
  factory RaceApi(Dio dio, {String baseUrl}) = _RaceApi;

  @POST('/current/next.json')
  Future<Ergast> getNextRace();

  @POST('/current.json')
  Future<Ergast> getCurrentRaces();

}