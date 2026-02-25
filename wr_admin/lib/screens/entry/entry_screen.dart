import 'package:flutter/material.dart';
import 'package:wr_admin/screens/entry/widgets/card_widget.dart'; 

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: LoginCardWidget(),
        ),
      ),
    );
  }
}
