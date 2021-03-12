import 'package:coffee_hub/models/drink_model.dart';
import 'package:flutter/material.dart';

class DrinksDetailsProvider extends ChangeNotifier {
  DrinkModel _drinkModel;

  DrinkModel get drinkModel => _drinkModel;

  set drinkModel(DrinkModel value) {
    _drinkModel = value;
    notifyListeners();
  }
}