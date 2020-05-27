import 'package:dishdesign/providers/homescreen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    final categorylist=Provider.of<HomeScreenProvider>(context,listen: false).categorylist;
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      width: devicesize.width - 30,
      height: 240,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://cdn.mosoah.com/wp-content/uploads/2017/07/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%AA%D8%B2%D9%8A%D9%8A%D9%86-%D8%A3%D8%B7%D8%A8%D8%A7%D9%82-%D8%A7%D9%84%D8%B7%D8%B9%D8%A7%D9%85.jpg',
                    fit: BoxFit.cover,
                  )),
              Container(
                width: devicesize.width - 30,
                height: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(100, 100, 100, .4)),
              ),
              Positioned(
                left: 10,
                top: 15,
                child: Container(
                  width: 160,
                  height: 30,
                  padding: EdgeInsets.only(left: 6),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 40, 40, .8),
                      borderRadius: BorderRadius.circular(7)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.local_atm,
                          size: 24,
                          color: Colors.white,
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 4),
                              child: Text(
                                '50%discount',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  width: devicesize.width - 100,
                  height: 110,
                  padding: EdgeInsets.only(left: 5,top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Text(
                          '20-30 min Delivery:2.5kb',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 9,),
                      Flexible(
                        flex: 2,child: Text('Kenutchy',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                      ),

                      Flexible(
                        flex: 1,child: Container(margin: EdgeInsets.only(right: 4),child: Row(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                          Icon(Icons.star,size: 22,color: Colors.white,),
                        SizedBox(width: 3,),
                        Expanded(child: Text('4.5 +Middle east arab',style: TextStyle(color: Colors.white,fontSize: 16),))

                      ],)),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
