import 'package:flutter/cupertino.dart';

class stepprovider extends ChangeNotifier
{
  int i=0;
  void conti()
  {
    if(i<2)
      {
        i++;
      }
    notifyListeners();
  }
  void can()
  {
    if(i>0)
      {
        i--;
      }
    notifyListeners();
  }
}