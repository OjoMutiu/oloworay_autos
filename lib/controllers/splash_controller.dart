import 'package:get/get.dart';

import '../constants/app_routes.dart';

class SplashScreenController extends GetxController{

  @override
  void onInit() {
    _navigateToOnBoardingPage();
    super.onInit();
  }

  _navigateToOnBoardingPage() async{
    await Future.delayed(const Duration(milliseconds: 2000), (){});
    Get.offNamed(Routes.onBoardingPage);
  }

}