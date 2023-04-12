import 'package:data_sync_flutter/controller/auth/login_page_controller.dart';
import 'package:data_sync_flutter/controller/auth/signup_page_controller.dart';
import 'package:data_sync_flutter/controller/home_page_controller.dart';
import 'package:data_sync_flutter/controller/splash_page_controller.dart';
import 'package:data_sync_flutter/views/auth/login_page.dart';
import 'package:data_sync_flutter/views/auth/signup_page.dart';
import 'package:data_sync_flutter/views/home_page.dart';
import 'package:data_sync_flutter/views/splash_page.dart';
import 'package:get/get.dart';

var getPage = [
  GetPage(
    name: SplashScreen.routeName,
    page: () => SplashScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => SplashController());
      },
    ),
  ),
  GetPage(
    name: LoginScreen.routeName,
    page: () => LoginScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => LoginController());
      },
    ),
  ),
  GetPage(
    name: SignupScreen.routeName,
    page: () => SignupScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => SignUpController());
      },
    ),
  ),
  GetPage(
    name: HomeScreen.routeName,
    page: () => HomeScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => HomeScreencontroller());
      },
    ),
  ),
];
