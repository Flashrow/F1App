import 'package:dio/dio.dart';
import 'package:f1app/models/DataHolders/Ergast.dart';
import 'package:retrofit/retrofit.dart';

part 'TopStandingsApi.g.dart';

@RestApi(baseUrl: 'http://ergast.com/api/f1/current')
abstract class TopStandingsApi{
  factory TopStandingsApi(Dio dio, {String baseUrl}) = _TopStandingsApi;

  @GET('/driverStandings.json')
  Future<Ergast> getDriversStandings();

  @GET('/constructorStandings.json')
  Future<Ergast> getConstructorsStandings();
}
