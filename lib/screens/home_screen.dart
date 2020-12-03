import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color checkOutColor = Color(0xff3C6B56);
    Color addToInventoryColor = Color(0xffE88D49);
    Color expenseColor = Color(0xff40A099);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Neslson Store',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: StockDrawer(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Text(
              'Good Morning Nelson',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
          ),
          Container(
            height: 120.0,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  checkOutColor,
                  checkOutColor.withOpacity(0.9),
                  checkOutColor.withOpacity(0.9)
                ],
                stops: [0.1, 0.5, 0.7],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Checkout',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                    fontSize: 18.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 300.0,
                      child: Text(
                        'It is a long established fact that a reader will be distracted by the readable',
                        style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white,
                            letterSpacing: 1.2),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Image(
                      image: AssetImage("assets/images/right_arrow.png"),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  addToInventoryColor,
                  addToInventoryColor.withOpacity(0.9),
                  addToInventoryColor.withOpacity(0.9)
                ],
                stops: [0.1, 0.5, 0.7],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Add to Inventory',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                    fontSize: 18.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 300.0,
                      child: Text(
                        'It is a long established fact that a reader will be distracted by the readable',
                        style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white,
                            letterSpacing: 1.2),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Image(
                      image: AssetImage("assets/images/right_arrow.png"),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  expenseColor,
                  expenseColor.withOpacity(0.9),
                  expenseColor.withOpacity(0.9)
                ],
                stops: [0.1, 0.5, 0.7],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Expense and Income',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                    fontSize: 18.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 300.0,
                      child: Text(
                        'It is a long established fact that a reader will be distracted by the readable',
                        style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white,
                            letterSpacing: 1.2),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Image(
                      image: AssetImage("assets/images/right_arrow.png"),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
