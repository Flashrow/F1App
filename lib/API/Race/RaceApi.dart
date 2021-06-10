import 'package:dio/dio.dart';
import 'package:f1app/models/DataHolders/Ergast.dart';
import 'package:retrofit/retrofit.dart';

part 'RaceApi.g.dart';

@RestApi(baseUrl: 'http://ergast.com/api/f1')
abstract class RaceApi {
  factory RaceApi(Dio dio, {String baseUrl}) = _RaceApi;

  @GET('/current/next.json')
  Future<Ergast> getNextRace();

  @GET('/current.json')
  Future<Ergast> getCurrentRaces();

  @GET("/{raceIndex}/results.json")
  Future<Ergast> getRaceResult(@Path("raceIndex") String raceIndex);

  @GET("/{year}.json")
  Future<Ergast> getRaceSchedule(@Path("year") String raceIndex);
}
