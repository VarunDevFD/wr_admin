import 'package:flutter/material.dart';
import 'package:wr_admin/theme/app_theme.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String? mainText;
  const ElevatedButtonWidget({
    super.key,
    this.mainText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 120,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.lightTheme.primaryColor, // Button color
          foregroundColor: Colors.white, // Text/Icon color
          elevation: 1,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 14,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          mainText ?? "Apply",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: AppTheme.secondaryColor,
          ),
        ),
      ),
    );
  }
}
