import 'package:flutter/material.dart';
import 'package:shop_app/data/Colors.dart';
import 'package:shop_app/data/item_sold.dart';

class ItemSoldWeek extends StatelessWidget {
  final List items;
  ItemSoldWeek(this.items);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: ListView.builder(
          padding: EdgeInsets.only(left: 10.0),
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: this.items.length,
          itemBuilder: (BuildContext context, int index) {
            ItemSold itemSold = this.items[index];
            return _buildRecentRecentOrder(context, itemSold);
          }),
    );
  }

  _buildRecentRecentOrder(BuildContext context, ItemSold itemSold) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            right: 10.0,
            top: 10.0,
            child: Container(
              child: Image(
                image: AssetImage('assets/images/stack.png'),
              ),
            ),
          ),
          Container(
            height: 190.0,
            width: 130.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  expenseColor,
                  expenseColor.withOpacity(0.9),
                  expenseColor.withOpacity(0.9)
                ],
                stops: [0.1, 0.5, 0.7],
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 10.0,
            child: Text(
              itemSold.day,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 30,
            child: Container(
              child: Text(
                itemSold.count.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 60.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
