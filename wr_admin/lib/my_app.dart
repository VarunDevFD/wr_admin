import 'package:flutter/material.dart';
import 'package:wr_admin/screens/entry/entry_screen.dart';
import 'package:wr_admin/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
