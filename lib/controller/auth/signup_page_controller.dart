import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var isPasswordHide = true.obs;
  var isConfirmPasswordHide = true.obs;
  hidePassword() {
    isPasswordHide.value = !isPasswordHide.value;
  }

  hideConfirmPassword() {
    isConfirmPasswordHide.value = !isConfirmPasswordHide.value;
  }

  onSubmit() {
    if (formKey.currentState!.validate()) {
      print("signup");
    }
  }
}
