import 'package:flutter/cupertino.dart';

class RacePickerInfoProvider with ChangeNotifier{
  String? year = DateTime.now().year.toString();
  String? round = "1";

  void setYear(String _year){
    this.year = _year;
    notifyListeners();
  }

  void setRound(String _round){
    this.round = _round;
    notifyListeners();
  }
}