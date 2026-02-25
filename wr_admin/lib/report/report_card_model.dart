import 'package:flutter/material.dart';

class ReportCardModel {
  final IconData? icon;
  final String? mainText;
  final String? description;
  ReportCardModel({this.icon, this.mainText, this.description});
}

List<ReportCardModel> reportCard = [
  ReportCardModel(
      icon: Icons.image,
      mainText: 'Revenue Report',
      description: 'Short description of the report.'),
  ReportCardModel(
      icon: Icons.image,
      mainText: 'Booking Report',
      description: 'Short description of the report.'),
  ReportCardModel(
      icon: Icons.image,
      mainText: 'User Growth Report',
      description: 'Short description of the report.'),
  ReportCardModel(
      icon: Icons.image,
      mainText: 'Provider Performance Report',
      description: 'Short description of the report.'),
  ReportCardModel(
      icon: Icons.image,
      mainText: 'Item Popularity Report',
      description: 'Short description of the report.'),
  ReportCardModel(
      icon: Icons.image,
      mainText: 'Cancellation Report',
      description: 'Short description of the report.'),
];
