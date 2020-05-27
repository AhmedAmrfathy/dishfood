import 'package:dishdesign/models/categorymodel.dart';
import 'package:dishdesign/screens/categortymeals_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel categoryitem;

  CategoryWidget(this.categoryitem);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: ()=>Navigator.of(context).pushReplacementNamed(CategoryMeals.categorymeals,arguments: {'id':categoryitem.id}),
      child: Container(
        width: 100,
        height: 100,
        margin: EdgeInsets.only(right: 20),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  categoryitem.img,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 12,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(128, 128, 128, .6),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  width: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: FittedBox(fit: BoxFit.cover,
                      child: Text(
                       categoryitem.text,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
