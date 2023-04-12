import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isHide = true.obs;
  hidePassword() {
    isHide.value = !isHide.value;
  }

  onSubmit() {
    if (formKey.currentState!.validate()) {
      print("Login");
    }
  }
}
