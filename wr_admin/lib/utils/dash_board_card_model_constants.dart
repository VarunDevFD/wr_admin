import 'package:flutter/material.dart';
import 'package:wr_admin/model/dashboard_card_model.dart';

final List<DashboardCardModel> dashboardCards = [
  DashboardCardModel(
    head: "Total Users",
    count: "10k",
    icon: Icons.person_sharp,
  ),
  DashboardCardModel(
    head: "Total Providers",
    count: "15",
    icon: Icons.person_sharp,
  ),
  DashboardCardModel(
    head: "Total Active Items",
    count: "8",
    icon: Icons.person_sharp,
  ),
  DashboardCardModel(
    head: "Pending Items",
    count: "2",
    icon: Icons.person_sharp,
  ),
  DashboardCardModel(
    head: "Total Revenue",
    count: "50k",
    icon: Icons.person_sharp,
  ),
];