import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wr_admin/screens/controller/login_controller.dart';
import 'package:wr_admin/utils/borders.dart';

class LoginInputField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool passIcon;
  final String? Function(String?)? validator;

  const LoginInputField({
    super.key,
    required this.hintText,
    required this.controller,
    this.passIcon = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<LoginController>();

    if (passIcon) {
      return Obx(
        () => TextFormField(
          controller: controller,
          cursorColor: Colors.black,
          obscureText: loginController.isPasswordHidden.value,
          validator: validator,
          decoration: InputDecoration(
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
            suffixIcon: IconButton(
              icon: Icon(
                loginController.isPasswordHidden.value
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
              onPressed: loginController.togglePassword,
            ),
          ),
        ),
      );
    }

    // Normal field (no reactive rebuild)
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      validator: validator,
      decoration: InputDecoration(
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
      ),
    );
  }
}
