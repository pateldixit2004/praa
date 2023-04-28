import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class dateprovider extends ChangeNotifier
{
  DateTime data= DateTime.now();
  void changedate(DateTime pickdate)
  {
    data=pickdate;
    notifyListeners();
  }
  TimeOfDay time =TimeOfDay.now();
  void chanetime(TimeOfDay picktime)
  {
    time=picktime;
    notifyListeners();
  }
}