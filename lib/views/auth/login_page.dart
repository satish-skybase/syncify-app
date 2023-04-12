import 'package:data_sync_flutter/controller/auth/login_page_controller.dart';
import 'package:data_sync_flutter/utils/validators.dart';
import 'package:data_sync_flutter/widget/custom/custom_elevated_button.dart';
import 'package:data_sync_flutter/widget/custom/custom_password_field.dart';
import 'package:data_sync_flutter/widget/custom/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/instance_manager.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/loginpage';
  LoginScreen({super.key});
  final LoginController lc = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(235, 62, 65, 75),
          title: const Text("Login"),
          elevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: lc.formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextField(
                      hintText: "Email",
                      textEditingController: lc.emailController,
                      textInputAction: TextInputAction.next,
                      validator: Validators.checkEmailField,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(
                      () => CustomPasswordTextField(
                        hintText: "Password",
                        textEditingController: lc.passwordController,
                        hidePassword: lc.hidePassword,
                        ishide: lc.isHide.value,
                        validator: Validators.checkPasswordField,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomElevatedButton(
                      title: "Login",
                      onTap: lc.onSubmit,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
