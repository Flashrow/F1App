// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DriversApi.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _DriversApi implements DriversApi {
  _DriversApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://ergast.com/api/f1';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Ergast> getDrivers() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Ergast>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/current/drivers.json',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Ergast.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
