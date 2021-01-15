import 'package:flutter/material.dart';
import 'package:mamakmajuwebapp/Customers/Orders/tandooripage.dart';

class FavouriteTab extends StatefulWidget {
  @override
  _FavouriteTabState createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _buildListItem('Set Chicken Tandoori', '12', 'assets/images/tandoorichicken.png', '14'),
          _buildListItem('Set Chicken Milaani', '13', 'assets/images/chickenmilani.png', '16'),
        ],
      ),
    );
  }


  _buildListItem(String foodName, String price, String imgPath, String normalPrice) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: InkWell(
          onTap: () {
            //ToDo
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TandooriPage(heroTag: foodName, foodName: foodName, pricePerItem: price, imgPath: imgPath)
            ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  width: 300.0,
                  child: Row(
                      children: [
                        Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: Color(0xFFFFE3DF)
                            ),
                            child: Center(
                              child: Image.asset(imgPath, height: 90.0, width: 90.0,),
                            )
                        ),
                        SizedBox(width: 4.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                                foodName,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600
                                )
                            ),
                            Row(
                              children: <Widget>[

                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text('\RM' + price,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.redAccent,
                                    )
                                ),
                                SizedBox(width: 3.0),
                                Text(
                                  'RM' + normalPrice,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w600,
                                  ),)
                              ],
                            )
                          ],
                        )
                      ]
                  )
              ),
              FloatingActionButton(
                heroTag: foodName,
                mini: true,
                onPressed: (){},
                child: Center(
                    child: Icon(Icons.add, color: Colors.white)
                ),
                backgroundColor: Color(0xFFFE7D6A),
              )
            ],
          )
      ),);

  }
}
