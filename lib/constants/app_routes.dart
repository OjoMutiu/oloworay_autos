import 'package:get/get.dart';


import '../pages/app_home/filter/filter_page.dart';
import '../pages/app_home/home.dart';
import '../pages/authentication/forget_password/forget_password.dart';
import '../pages/authentication/reset_password/reset_password.dart';
import '../pages/authentication/reset_password/reset_successful.dart';
import '../pages/authentication/sign_in/sign_in.dart';
import '../pages/authentication/sign_up/sign_up.dart';
import '../pages/authentication/verification/forgot_password_otp/forgot_password_otp.dart';
import '../pages/authentication/verification/sign_up_otp/otp.dart';
import '../pages/message/available_users.dart';
import '../pages/onBoarding/onboarding_page.dart';
import '../pages/splash/splash_screen.dart';

class Routes {
  static String onBoardingPage = '/onBoardingPage';
  static String splashScreen = '/';

  static String signUpPage = '/signUpPage';
  static String signInPage = '/signInPage';
  static String otp ='/OTP';
  static String forgetPassword = '/forgetPassword';
  static String forgetPasswordOtp = '/forgetPasswordOtp';
  static String resetPassword = '/resetPassword';
  static String resetSuccessful = '/resetSuccessful';

  static String myHomeScreen = '/myHomeScreen';
  static String filterPage = '/filterPage';

  static String availableUsers = '/availableUsers';

}

final getPages = [
  GetPage(name: Routes.onBoardingPage,
    page: () => OnBoardingPage(),
  ),
  GetPage(name: Routes.splashScreen,
    page: () => MySplashscreen(),
  ),
  GetPage(name: Routes.signUpPage,
    page: () => const SignUpPage(),
  ),
  GetPage(name: Routes.signInPage,
    page: () => const SignInPage(),
  ),
  GetPage(name: Routes.otp,
    page: () => const OTP(),
  ),
  GetPage(name: Routes.forgetPassword,
    page: () => const ForgotPassword(),
  ),
  GetPage(name: Routes.forgetPasswordOtp,
    page: () => const ForgotPasswordOTP(),
  ),
  GetPage(name: Routes.resetPassword,
    page: () => const ResetPassword(),
  ),
  GetPage(name: Routes.resetSuccessful,
    page: () => const PasswordResetSuccessful(),
  ),
  GetPage(name: Routes.myHomeScreen,
    page: () => const MyHomeScreen(),
  ),
  GetPage(name: Routes.filterPage,
    page: () => const FilterPage(),
  ),
  GetPage(name: Routes.availableUsers, page: () => const AvailableUsers())
];
