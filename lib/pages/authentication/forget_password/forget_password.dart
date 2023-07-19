import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_dimensions.dart';
import '../../../constants/app_strings.dart';
import '../../../controllers/forget_password_controller.dart';
import 'forget_password_body.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>ForgetPasswordController());
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: SvgPicture.asset(backArrow, width: AppDimension.height20,
                  height: AppDimension.height20,
                ))),
        body: const ForgetPasswordBody());
  }
}
