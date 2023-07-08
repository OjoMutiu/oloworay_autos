import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_dimensions.dart';
import '../../../controllers/main_homepage_controller.dart';

Obx buildHomeBottomNavBar(HomePageController controller, BuildContext context) {
  return Obx(
    () => BottomNavigationBar(
      // backgroundColor: Colors.red,
      currentIndex: controller.currentIndex.value,
      onTap: controller.onItemTap,
      elevation: 20,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedItemColor: AppColors.primary500,
      selectedLabelStyle: Theme.of(context)
          .textTheme
          .labelMedium
          ?.copyWith(fontSize: AppDimension.font10),
      unselectedLabelStyle: Theme.of(context)
          .textTheme
          .labelSmall
          ?.copyWith(fontSize: AppDimension.font10),
      unselectedItemColor: Colors.black45,
      items: [
        BottomNavigationBarItem(
          icon: Container(
              margin: EdgeInsets.only(bottom: AppDimension.height6),
              child: const Icon(Icons.home_filled)),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
              margin: EdgeInsets.only(bottom: AppDimension.height6),
              child: const Icon(Icons.message)),
          label: 'Message',
        ),
        BottomNavigationBarItem(
            icon: Container(
                margin: EdgeInsets.only(bottom: AppDimension.height6),
                child: const Icon(Icons.car_repair_rounded)),
            label: 'Sell'),
        BottomNavigationBarItem(
            icon: Container(
                margin: EdgeInsets.only(bottom: AppDimension.height6),
                child: const Icon(Icons.rocket_launch)),
            label: 'Invest'),
        BottomNavigationBarItem(
            icon: Container(
                margin: EdgeInsets.only(bottom: AppDimension.height6),
                child: const Icon(Icons.account_circle)),
            label: 'Account')
      ],
    ),
  );
}
