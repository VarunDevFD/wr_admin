import 'package:flutter/material.dart';
import 'package:wr_admin/theme/app_theme.dart';
import 'package:wr_admin/widgets/login_input_field.dart';

class LoginCardWidget extends StatelessWidget {
  const LoginCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.lightTheme.scaffoldBackgroundColor,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      shadowColor: const Color.fromARGB(255, 0, 0, 0).withValues(alpha: 0.6),
      child: Container(
        margin: EdgeInsets.all(20),
        width: 300,
        child: Column(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Admin Panel",
                style: TextStyle(
                  fontFamily: 'Kameron-VariableFont',
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  color: AppTheme.lightTheme.primaryColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Login to Dashboard",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.secondaryColor,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text("Email", style: Theme.of(context).textTheme.titleMedium),
            LoginInputField(hintText: "Please Enter your name"),
            Text("Password", style: Theme.of(context).textTheme.titleMedium),
            LoginInputField(
              hintText: "Please Enter your Password",
              obscureText: true,
              icon: true,
              validator: (value) =>
                  value == null || value.isEmpty ? "Enter password" : null,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: AppTheme.secondaryColor,
                  overlayColor: const Color.fromARGB(255, 172, 209, 237)
                      .withValues(alpha: 0.1),
                ),
                onPressed: () {},
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.center,
              widthFactor: 8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.lightTheme.primaryColor,
                  foregroundColor: AppTheme.primaryShadowColor,
                  shadowColor: AppTheme.primaryShadowColor,
                  minimumSize: Size(500, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: AppTheme.secondaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: AppTheme.secondaryColor,
                  overlayColor: const Color.fromARGB(255, 172, 209, 237)
                      .withValues(alpha: 0.1),
                ),
                onPressed: () {},
                child: Text(
                  'Need help? Contact support',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
