import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wr_admin/screens/entry/entry_screen.dart';
import 'package:wr_admin/screens/home/home_screen.dart';
import 'package:wr_admin/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    final isLoggedIn = box.read("isLoggedIn") ?? false;
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: isLoggedIn ? HomeScreen() : LoginScreen(),
    );
  }
}
