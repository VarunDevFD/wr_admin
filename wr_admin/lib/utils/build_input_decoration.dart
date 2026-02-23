import 'package:flutter/material.dart';
import 'package:wr_admin/theme/app_theme.dart';
import 'package:wr_admin/utils/borders.dart';

InputDecoration buildInputDecoration(String hintText, bool icon) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: const TextStyle(
      color: Color(0xFFA5A5A5),
      fontSize: 14,
    ),
    filled: true,
    fillColor: const Color(0xFFF5F5F7),
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder2,
    focusedBorder: outlineInputBorder,
    suffixIcon: (icon)
        ? IconButton(
            color: AppTheme.secondaryColor,
            hoverColor: Colors.transparent,
            icon: Icon(Icons.remove_red_eye_rounded),
            onPressed: () {},
          )
        : null,
  );
}
