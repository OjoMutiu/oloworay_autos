import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oloworay_autos/pages/app_home/widget/bottom_nav.dart';
import 'package:oloworay_autos/pages/sell/sell.dart';


import '../../controllers/main_homepage_controller.dart';
import '../message/message.dart';
import 'home_page/main_page.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key, this.userName}) : super(key: key);
  final String? userName;

  @override
  Widget build(BuildContext context) {

    final List<Widget> pages = [
      const HomePageBody(),
      const Messages(),
      const SellPage(),
      Container(color: Colors.red),
      Container(color: Colors.green),
    ];

    HomePageController controller = Get.find();

    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: buildHomeBottomNavBar(controller, context),
    );
  }
}
