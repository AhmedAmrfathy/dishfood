import 'package:dishdesign/models/categorymodel.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenProvider with ChangeNotifier {
  List<CategoryModel> categorylist = [
    CategoryModel(
        'https://www.seoclerk.com/images/membersprofilepic/o/756515.jpg',
        'Offers',1),
    CategoryModel(
        'https://visualsonline.cancer.gov/retrieve.cfm?imageid=2518&dpi=300&fileformat=jpg',
        'Burger',2),
    CategoryModel('https://fattycue.com/wp-content/uploads/2019/10/pizza-1.jpg',
        'Pitzza',3),
    CategoryModel(
        'https://i.pinimg.com/originals/b4/09/33/b40933bf361ec47c1835cae89398275d.jpg',
        'Healthy',4),
    CategoryModel(
        'https://visualsonline.cancer.gov/retrieve.cfm?imageid=2518&dpi=300&fileformat=jpg',
        'Burger',2),
    CategoryModel('https://fattycue.com/wp-content/uploads/2019/10/pizza-1.jpg',
        'Pitzza',3),
    CategoryModel(
        'https://www.foodiecrush.com/wp-content/uploads/2019/07/Pomodoro-Sauce-foodiecrush.com-015.jpg',
        'Pasta',5),
    CategoryModel(
        'https://visualsonline.cancer.gov/retrieve.cfm?imageid=2518&dpi=300&fileformat=jpg',
        'Burger',2),
    CategoryModel('https://fattycue.com/wp-content/uploads/2019/10/pizza-1.jpg',
        'Pitzza',3),
    CategoryModel(
        'https://www.foodiecrush.com/wp-content/uploads/2019/07/Pomodoro-Sauce-foodiecrush.com-015.jpg',
        'Pasta',5)
  ];

}
