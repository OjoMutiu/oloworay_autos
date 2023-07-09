import 'package:get/get.dart';
import 'package:oloworay_autos/controllers/message_controller.dart';
import 'package:oloworay_autos/controllers/sign_in_controller.dart';
import 'package:oloworay_autos/controllers/sign_up_controller.dart';
import 'package:oloworay_autos/controllers/splash_controller.dart';

import 'main_homepage_controller.dart';
import 'on_boarding_page_controller.dart';


class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(() => SplashScreenController());
    Get.lazyPut<OnBoardingPageController>(() => OnBoardingPageController());
    Get.put<UserSignInFormController>(UserSignInFormController());
    Get.put<UserSignUpFormController>(UserSignUpFormController());
    Get.put<HomePageController>(HomePageController());
    Get.put<MessageController>(MessageController());
  }

}