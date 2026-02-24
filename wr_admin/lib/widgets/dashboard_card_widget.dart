import 'package:flutter/material.dart';
import 'package:wr_admin/model/dashboard_card_model.dart';

class AppBodyCard extends StatelessWidget {
  final DashboardCardModel dashboardCards;

  const AppBodyCard(this.dashboardCards, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 250,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dashboardCards.head,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Text(
              dashboardCards.count,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            Icon(dashboardCards.icon),
          ],
        ),
      ),
    );
  }
}
