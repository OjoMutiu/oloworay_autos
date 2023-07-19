import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oloworay_autos/pages/authentication/sign_in/sign_in_body.dart';

import '../../../constants/app_dimensions.dart';
import '../../../constants/app_strings.dart';



class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        body: const SignInBody());
  }
}
