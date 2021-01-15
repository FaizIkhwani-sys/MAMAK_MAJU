import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamakmajuwebapp/Customers/Orders/favouritetab.dart';
import 'package:mamakmajuwebapp/Customers/Orders/foodtab.dart';
import 'package:mamakmajuwebapp/Customers/Orders/recommended.dart';
import 'package:mamakmajuwebapp/Customers/Orders/tandooripage.dart';


class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with SingleTickerProviderStateMixin{
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(   // menu icon and profile icon
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.menu, color: Colors.black),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.withOpacity(0.3),
                            blurRadius: 6.0,
                            spreadRadius: 4.0,
                            offset: Offset(0.0, 3.0),
                          )
                        ],
                        color: Color(0xFFC6E7FE),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/semboi.png"),
                          fit: BoxFit.contain,

                        )
                    ),
                  )
                ],
              ),
            ),
            Padding(  // 'search for' text
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'SEARCH FOR',
                style: TextStyle(
                    fontWeight: FontWeight.w800, fontSize: 27.0),
              ),
            ),
            Padding(  // recipes text
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'RECIPES',
                style: TextStyle(
                    fontWeight: FontWeight.w800, fontSize: 27.0),
              ),
            ),
            SizedBox(height: 25.0),
            Padding(  // search bar
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                padding: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                    border: InputBorder.none,
                    fillColor: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 28.0),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Recommended',
                style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildListItem('Tandoori', "assets/images/tandoori.png", '12', Color(0xFFFFE9C6), Color(0xFFDA9551)),
                  _buildListItem('Naan Cheese', "assets/images/naancheese.png", '13', Color(0xFFFFE9C6), Color(0xFFDA9551)),
                  _buildListItem('Teh 3 Layer', "assets/images/3layer.png", '6', Color(0xFFFFE9C6), Color(0xFFDA9551)),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(padding: EdgeInsets.only(left: 15.0), child: TabBar(
                controller: tabController,
                isScrollable: true,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.withOpacity(0.5),
                labelStyle: TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.w700
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 12.0, fontWeight: FontWeight.w500,
                ),
                tabs: [
                  Tab(child: Text('FEATURED')),
                  Tab(child: Text('FAVOURITE')),
                  Tab(child: Text('RECOMMENDED')),
                ]
            )),
            Container(
              height: MediaQuery.of(context).size.height - 450.0,
              child: TabBarView(
                controller: tabController,
                children: [
                  FoodTab(),
                  FavouriteTab(),
                  RecommendedTab(),
                ],
              ),
            )
          ]),
    );
  }

  _buildListItem(String foodName, String imgPath, String price, Color bgColor, Color textColor) {
    return Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: InkWell(
            onTap: () {
              //ToDo
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TandooriPage(heroTag: foodName, foodName: foodName, pricePerItem: price, imgPath: imgPath)
              ));
            },
            child: Container(
                height: 175.0,
                width: 150.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0), color: bgColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Hero(
                        tag: foodName,
                        child: Container(
                            height: 120.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),

                            child: Center(
                                child: Image.asset(imgPath,
                                    height: 90.0, width: 90.0)))),
                    SizedBox(height: 25.0),
                    Text(
                      foodName,
                      style: TextStyle(
                          fontSize: 17.0, color: textColor),
                    ),
                    Text('\RM' + price,
                        style: TextStyle(
                            fontSize: 17.0, color: textColor))
                  ],
                ))));
  }
}
