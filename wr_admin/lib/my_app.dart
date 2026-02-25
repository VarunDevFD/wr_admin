import 'package:flutter/material.dart';
import 'package:wr_admin/payments/payment_scn.dart';
import 'package:wr_admin/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weding Rental Admin',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      //   // fontFamily: 'Pixellettersfull',

      // ),
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: PaymentScreen(),
    );
  }
}
