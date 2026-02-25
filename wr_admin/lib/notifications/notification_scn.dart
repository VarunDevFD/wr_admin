import 'package:flutter/material.dart'; 
import 'package:wr_admin/mobile_layout.dart';
import 'package:wr_admin/notifications/dashboard_scn.dart';
import 'package:wr_admin/tablet_layout.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileLayout();
        } else if (constraints.maxWidth < 1024) {
          return const TabletLayout();
        } else {
          return const DesktopLayout();
        }
      },
    );
  }
}