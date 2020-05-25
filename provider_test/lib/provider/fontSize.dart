import 'package:flutter/material.dart';

class FontSizeNotifier extends ChangeNotifier{
  double fontSize = 22;

  changeFontSize(double newValue){
    fontSize = newValue ;
    notifyListeners();
  }
}