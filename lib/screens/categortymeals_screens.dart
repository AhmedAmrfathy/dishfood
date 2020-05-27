import 'package:dishdesign/models/meal_model.dart';
import 'package:dishdesign/providers/meals_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryMeals extends StatefulWidget {
  static const categorymeals = 'catmealsroute';

  @override
  _CategoryMealsState createState() => _CategoryMealsState();
}

class _CategoryMealsState extends State<CategoryMeals> {
  List<Meal> listofmeal;
  var isloading = true;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if (isloading) {
      final arguments = ModalRoute.of(context).settings.arguments as Map;
      final allmeals = Provider.of<MealsProvider>(context).list;
      listofmeal =
          allmeals.where((elemn) => elemn.categoryId == arguments['id']).toList();
    }
    isloading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(listofmeal[0].img),
    );
  }
}
