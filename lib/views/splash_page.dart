import 'package:data_sync_flutter/controller/splash_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "/splashscreen";
  SplashScreen({super.key});
  final SplashController sc = Get.find();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Welcome"),
      ),
    );
  }
}
