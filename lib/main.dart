import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oloworay_autos/pages/app_home/home.dart';

import 'constants/app_routes.dart';
import 'constants/theme/theme.dart';
import 'controllers/all_controller_binding.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AllControllerBinding(),
      initialRoute: '/',
      getPages: getPages,
      theme: AppTheme.lightTheme,
      home: const MyHomeScreen(),
    );
  }
}