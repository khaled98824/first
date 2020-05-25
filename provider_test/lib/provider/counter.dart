import 'package:flutter/material.dart';

class counter with ChangeNotifier{
  int cnt =0;

  inCnt(){
    cnt++;
    notifyListeners();
  }
}