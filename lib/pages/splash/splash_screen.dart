import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oloworay_autos/constants/app_dimensions.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
import '../../controllers/splash_controller.dart';



class MySplashscreen extends StatelessWidget {
  MySplashscreen({Key? key}) : super(key: key);

  final SplashScreenController controller = Get.find();//put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 3,),
            Center(child: SvgPicture.asset(splashScreenImage)),
            const Spacer(flex: 4,),
            Text('Version 1.0.0', style: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: AppDimension.font12,
              color: AppColors.black60
            )),
            const Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}

