import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data/activities.dart';
import 'package:shop_app/data/activity.dart';

class RecentActivities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          RecentActivity activity = recentActivities[index];
          return _buildRecentItem(activity, context);
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(
              left: 15.0,
              right: 15.0,
            ),
            child: Divider(
              height: 1.0,
              color: Colors.grey,
            ),
          );
        },
        itemCount: recentActivities.length,
      ),
    );
  }

  _buildRecentItem(RecentActivity activity, BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              activity.description,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
                letterSpacing: 1.2,
              ),
            ),
          ),
          Text(
            activity.price,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
              letterSpacing: 1.2,
            ),
          )
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          activity.time,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
