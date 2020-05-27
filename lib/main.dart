import 'package:dishdesign/providers/homescreen_provider.dart';
import 'package:dishdesign/providers/meals_provider.dart';
import 'package:dishdesign/screens/categortymeals_screens.dart';
import 'package:dishdesign/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: HomeScreenProvider()),
        ChangeNotifierProvider.value(value: MealsProvider())

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home:HomeScreen(),
        routes: {
          CategoryMeals.categorymeals:(ctx)=>CategoryMeals()
        },
      ),
    );
  }
}




