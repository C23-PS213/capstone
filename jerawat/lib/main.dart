import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jerawat/app/theme/light_theme.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "jerawat app",
      initialRoute: Routes.SPLASHSCREEN,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
    );
  }
}

