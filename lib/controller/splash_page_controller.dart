//change garda call function and update database
// reload garda update function

import 'package:data_sync_flutter/views/home_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offNamed(HomeScreen.routeName);
      },
    );
    super.onInit();
  }
}
