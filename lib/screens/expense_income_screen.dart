import 'package:flutter/material.dart';
import 'package:shop_app/screens/expenses.dart';
import 'package:shop_app/screens/income.dart';
import 'package:shop_app/widgets/drawer.dart';

class ExpenseIncome extends StatefulWidget {
  @override
  _ExpenseIncomeState createState() => _ExpenseIncomeState();
}

class _ExpenseIncomeState extends State<ExpenseIncome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: StockDrawer(),
        appBar: AppBar(
          title: Text(
            'Expense and Income',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600),
          ),
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(
                text: 'Expenses',
              ),
              Tab(
                text: 'Income',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Expenses(),
            Income(),
          ],
        ),
      ),
    );
  }
}
