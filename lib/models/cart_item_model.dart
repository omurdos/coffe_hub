import 'package:coffee_hub/models/drink_model.dart';

class CartItemModel {
  DrinkModel drink;
  double cupSize;
  double sugarCubes;

  CartItemModel({this.drink, this.cupSize, this.sugarCubes});
}
