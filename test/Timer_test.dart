import 'package:dio/dio.dart';
import 'package:f1app/models/DataHolders/Ergast.dart';
import 'package:f1app/models/DataHolders/MRData.dart';
import 'package:f1app/models/HomeSceenTimer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

main() {
  test('Time duration test', () async {
    HomeScreenTimer timer = HomeScreenTimer();
    timer.updateTimer(DateTime.parse("2021-06-20 13:00:00Z"));

    print("Difference days: " + timer.duration.inDays.toString());
    print("Difference hours: " + (timer.duration.inHours%24).toString());
    print("Difference minutes: " + (timer.duration.inMinutes%60).toString());
    print("Difference seconds: " + (timer.duration.inSeconds%60).toString());
  });

}