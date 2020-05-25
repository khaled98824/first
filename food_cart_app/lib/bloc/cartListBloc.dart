import 'dart:core';
import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:com/model/foodItem.dart';
import 'dart:async';
import 'package:com/bloc/provider.dart';

class CartListBloc extends BlocBase{

  CartListBloc();
  var _listController = BehaviorSubject<List<FoodItem>>.seeded([]);
  CardProvider provider =CardProvider();



  Stream<List<FoodItem>> get ListStream => _listController.stream;

  Sink<List<FoodItem>> get  ListSink => _listController.sink;

  addToList(FoodItem foodItem){
    ListSink.add(provider.addToList(foodItem));
  }

  removeFromList (FoodItem foodItem){
    ListSink.add(provider.removeFromList(foodItem));
  }

  @override
  void dispose() {//
    _listController.close();// will be called automatically

  }

}