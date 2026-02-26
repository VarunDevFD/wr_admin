import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wr_admin/screens/home/home_screen.dart';

class LoginController extends GetxController {
  final box = GetStorage();
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final errorMessage = ''.obs;
  final isPasswordHidden = true.obs;

  void togglePassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void login() {
    if (formKey.currentState!.validate()) {
      if (emailController.text == 'Varunrevathi6@gmail.com' &&
          passwordController.text == 'v123456*') {
        Get.offAll(() => const HomeScreen());
        box.write('isLoggedIn', true);
      } else {
        errorMessage.value = "Invalid login credentials";
      }
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
