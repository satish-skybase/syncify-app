import 'package:data_sync_flutter/controller/auth/signup_page_controller.dart';
import 'package:data_sync_flutter/utils/validators.dart';
import 'package:data_sync_flutter/widget/custom/custom_elevated_button.dart';
import 'package:data_sync_flutter/widget/custom/custom_password_field.dart';
import 'package:data_sync_flutter/widget/custom/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  static const String routeName = '/signup';
  SignupScreen({super.key});
  final SignUpController suc = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(235, 62, 65, 75),
          title: const Text("Signup"),
          elevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: suc.formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextField(
                      hintText: "Email",
                      textEditingController: suc.emailController,
                      textInputAction: TextInputAction.next,
                      validator: Validators.checkEmailField,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(
                      () => CustomPasswordTextField(
                        hintText: "Password",
                        textEditingController: suc.passwordController,
                        hidePassword: suc.hidePassword,
                        ishide: suc.isPasswordHide.value,
                        validator: Validators.checkPasswordField,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(
                      () => CustomPasswordTextField(
                        hintText: "Confirm Password",
                        textEditingController: suc.confirmPasswordController,
                        hidePassword: suc.hideConfirmPassword,
                        ishide: suc.isConfirmPasswordHide.value,
                        validator: Validators.checkPasswordField,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomElevatedButton(
                      title: "Signup",
                      onTap: suc.onSubmit,
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
