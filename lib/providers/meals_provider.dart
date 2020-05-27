import 'package:dishdesign/models/meal_model.dart';
import 'package:flutter/cupertino.dart';

class MealsProvider with ChangeNotifier {
  List<Meal> list = [
    Meal(
        'https://www.howsweeteats.com/wp-content/uploads/2017/03/poppy-seed-fruit-salad-I-howsweeteats.com-7.jpg',
        'fruit salat',
        'vegeterian fans eate',
        4),
    Meal(
        'https://popmenucloud.com/cdn-cgi/image/width=600,height=600,fit=scale-down,format=auto/ztregbwc/d48cc679-b0f1-4bfe-825b-6b73638c58e6',
        'pizza meat',
        'meat fans eate',
        3),
    Meal(
        'https://www.kitchensanctuary.com/wp-content/uploads/2019/08/Crispy-Chicken-Burger-updated-square-Nov2019-500x375.jpg',
        'Burger grand',
        'meat fans eate',
        2),
    Meal(
        'https://www.howsweeteats.com/wp-content/uploads/2017/03/poppy-seed-fruit-salad-I-howsweeteats.com-7.jpg',
        'Pasta Chicken',
        'chicken fans eate',
        5)
  ];
}
