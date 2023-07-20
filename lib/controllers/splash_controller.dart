import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/app_routes.dart';
import '../constants/local_storage.dart';

class SplashScreenController extends GetxController{

  @override
  void onInit() {
    _navigateToOnBoardingPage();
    super.onInit();
    initialRouteCondition();
  }

  _navigateToOnBoardingPage() async{
    await Future.delayed(const Duration(milliseconds: 2000), (){});
    Get.offNamed(Routes.onBoardingPage);
  }


  Future initialRouteCondition() async {
    final SharedPreferences routePref = await SharedPreferences.getInstance();
    var onBoardingSeen = routePref.getBool(LocalStorage.onboardingKey) ?? false;

    if (!onBoardingSeen) {
      _navigateToOnBoardingPage();
    } else {
      Get.offNamed(Routes.myHomeScreen);
    }
  }

}