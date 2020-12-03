import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:shop_app/data/activity.dart';
import 'package:shop_app/widgets/recent_activites.dart';

class Income extends StatefulWidget {
  @override
  _IncomeState createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  Color todayColor = Color(0xffC80815).withOpacity(0.5);
  Color weekColor = Colors.black;
  Color monthColor = Colors.black;

  Color todaybgColor = Color(0xffE5E5E5);
  Color weekbgColor = Color(0xffF6F6F6);
  Color monthngColor = Color(0xffF6F6F6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 120.0,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 10.0, right: 15.0, left: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Color(0xffF6F6F6),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0),
                    ),
                  ),
                  width: 5.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                todayColor = Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.5);
                                monthColor = Colors.black;
                                weekColor = Colors.black;
                                todaybgColor = Color(0xffE5E5E5);
                                monthngColor = Color(0xffF6F6F6);
                                weekbgColor = Color(0xffF6F6F6);
                              });
                            },
                            child: Container(
                              width: 70.0,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: todaybgColor,
                                  border: Border(
                                      top: BorderSide(width: 0.2),
                                      bottom: BorderSide(width: 0.2),
                                      right: BorderSide(width: 0.2),
                                      left: BorderSide(width: 0.2)),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Center(
                                child: Text(
                                  'Today',
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                      color: this.todayColor,
                                      letterSpacing: 1.2),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                todayColor = Colors.black;
                                monthColor = Colors.black;
                                weekColor = Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.5);
                                weekbgColor = Color(0xffE5E5E5);
                                monthngColor = Color(0xffF6F6F6);
                                todaybgColor = Color(0xffF6F6F6);
                              });
                            },
                            child: Container(
                              width: 70.0,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: weekbgColor,
                                  border: Border(
                                      top: BorderSide(width: 0.2),
                                      bottom: BorderSide(width: 0.2),
                                      right: BorderSide(width: 0.2),
                                      left: BorderSide(width: 0.2)),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Center(
                                child: Text(
                                  'Week',
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                      color: this.weekColor,
                                      letterSpacing: 1.2),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              todayColor = Colors.black;
                              monthColor = Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.5);
                              weekColor = Colors.black;
                              monthngColor = Color(0xffE5E5E5);
                              weekbgColor = Color(0xffF6F6F6);
                              todaybgColor = Color(0xffF6F6F6);
                            });
                          },
                          child: Container(
                            width: 70.0,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: monthngColor,
                                border: Border(
                                    top: BorderSide(width: 0.2),
                                    bottom: BorderSide(width: 0.2),
                                    right: BorderSide(width: 0.2),
                                    left: BorderSide(width: 0.2)),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Center(
                              child: Text(
                                'Month',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: this.monthColor,
                                    letterSpacing: 1.2),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'N200,000',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'QUICK CATEGORIES',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 120.0,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(right: 10.0, left: 10.0),
            margin: EdgeInsets.only(right: 15.0, left: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Color(0xffF6F6F6),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _createCategoryItem(
                      'assets/images/store.png',
                      'Sale',
                      context,
                    ),
                    _createCategoryItem(
                      'assets/images/store.png',
                      'Salary',
                      context,
                    ),
                    _createCategoryItem(
                      'assets/images/store.png',
                      'Business',
                      context,
                    ),
                    _createCategoryItem(
                      'assets/images/store.png',
                      'Investment',
                      context,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'RECENT ACTIVITIES',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          RecentActivities(),
        ],
      ),
    );
  }

  _createCategoryItem(String imageUrl, String text, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 55.0,
          child: Image(
            image: AssetImage(imageUrl),
            color: Colors.black,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xffE5E5E5)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 12.0, color: Theme.of(context).primaryColor),
          ),
        )
      ],
    );
  }
}
