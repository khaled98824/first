import 'package:flutter/material.dart';


class counter1 with ChangeNotifier{
  int cnt =0;

  inCnt(){
    cnt++;
    notifyListeners();
  }
}