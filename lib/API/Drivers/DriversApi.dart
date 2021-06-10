import 'package:dio/dio.dart';
import 'package:f1app/models/DataHolders/Ergast.dart';
import 'package:retrofit/retrofit.dart';

part 'DriversApi.g.dart';

@RestApi(baseUrl: 'http://ergast.com/api/f1')
abstract class DriversApi {
  factory DriversApi(Dio dio, {String baseUrl}) = _DriversApi;

  @GET('/current/drivers.json')
  Future<Ergast> getDrivers();
}
