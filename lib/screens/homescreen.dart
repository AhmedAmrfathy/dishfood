import 'package:dishdesign/providers/homescreen_provider.dart';
import 'package:dishdesign/widgets/categorywidget.dart';
import 'package:dishdesign/widgets/homelistview_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    final categorylist=Provider.of<HomeScreenProvider>(context,listen: false).categorylist;
    return Scaffold(
      body: Container(
        width: devicesize.width,
        height: devicesize.height,
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: devicesize.width,
              height: devicesize.height * .3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: devicesize.width,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(width: .5, color: Colors.grey),
                      )),
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                            iconSize: 28,
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                labelText: 'Search',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.list,
                              color: Colors.black,
                            ),
                            iconSize: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      width: devicesize.width,
                      margin: EdgeInsets.only(top: 7),
                      padding: EdgeInsets.only(left: 5, top: 5),
                      child: Center(
                          child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) => CategoryWidget(categorylist[index]),
                        itemCount: categorylist.length,
                      )),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          'Restaurants',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: devicesize.width,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: ListView.builder(itemCount: 10,itemBuilder:(ctx,index)=>HomeListViewWidget()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
