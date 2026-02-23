import 'package:flutter/material.dart';
import 'package:wr_admin/utils/build_input_decoration.dart';

class LoginInputField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final bool icon;
  final String? Function(String?)? validator;

  const LoginInputField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.validator,
    this.icon = false,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      obscureText: obscureText,
      validator: validator,
      decoration: buildInputDecoration(hintText, icon),
    );
  }
}
