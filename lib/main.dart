import 'package:data_sync_flutter/firebase_options.dart';
import 'package:data_sync_flutter/utils/pages.dart';
import 'package:data_sync_flutter/views/auth/login_page.dart';
import 'package:data_sync_flutter/views/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // name: 'Skybase Apps',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const DataSync());
}

class DataSync extends StatelessWidget {
  const DataSync({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(235, 62, 65, 75),
          colorScheme: const ColorScheme.dark(
            background: Color.fromARGB(235, 62, 65, 75),
          )),
      initialRoute: SplashScreen.routeName,
      getPages: getPage,
    );
  }
}
