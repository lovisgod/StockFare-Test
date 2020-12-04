import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data/Colors.dart';
import 'package:shop_app/data/activities.dart';
import 'package:shop_app/data/activity.dart';
import 'package:shop_app/data/item_sold.dart';
import 'package:shop_app/screens/expense_income_screen.dart';
import 'package:shop_app/widgets/drawer.dart';
import 'package:shop_app/widgets/item_sold_week.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageNo = 0;
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            pageNo = index;
          });
        },
        currentIndex: pageNo,
        showUnselectedLabels: true,
        elevation: 8.0,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/dashboard.png'),
            ),
            title: Text(
              'Dashboard',
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/show.png'),
            ),
            title: Text(
              'Inventory',
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/stack.png'),
            ),
            title: Text(
              'Sales',
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/graph.png'),
            ),
            title: Text(
              'Analytics',
            ),
          ),
        ],
      ),
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
            margin: EdgeInsets.only(top: 10.0, right: 15.0, left: 15.0),
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
                    Expanded(
                      child: Container(
                        child: Text(
                          'It is a long established fact that a reader will be distracted by the readable',
                          style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white,
                              letterSpacing: 1.2),
                          textAlign: TextAlign.left,
                        ),
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
            margin: EdgeInsets.only(top: 10.0, right: 15.0, left: 15.0),
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
                    Expanded(
                      child: Container(
                        child: Text(
                          'It is a long established fact that a reader will be distracted by the readable',
                          style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white,
                              letterSpacing: 1.2),
                          textAlign: TextAlign.left,
                        ),
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
          GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => ExpenseIncome())),
            child: Container(
              height: 120.0,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10.0, right: 15.0, left: 15.0),
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
                      Expanded(
                        child: Container(
                          child: Text(
                            'It is a long established fact that a reader will be distracted by the readable',
                            style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.white,
                                letterSpacing: 1.2),
                            textAlign: TextAlign.left,
                          ),
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
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Text(
              'ITEMS SOLD THIS WEEK',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ItemSoldWeek(itemsoldList),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Text(
              'RECENT ACTIVITIES',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 400.0,
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  Activity activity = currentActivities[index];
                  return _buildCartItem(activity, context);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 1.0,
                    color: Colors.grey,
                  );
                },
                itemCount: currentActivities.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildCartItem(Activity activity, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: ListTile(
        leading: Container(
          width: 50.0,
          child: Image(
            image: AssetImage(activity.image),
            color: Theme.of(context).primaryColor.withOpacity(0.5),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0), color: shopGrey),
        ),
        title: Text(
          activity.description,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.2,
            fontSize: 15.0,
          ),
          textAlign: TextAlign.left,
        ),
        subtitle: Row(
          children: <Widget>[
            Text(
              '${activity.time} ',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 13.0,
                letterSpacing: 1.2,
              ),
            ),
            Text(
              'By ${activity.who}',
              style: TextStyle(
                color: Theme.of(context).primaryColor.withOpacity(0.5),
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
                letterSpacing: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
