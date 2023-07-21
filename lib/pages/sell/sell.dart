import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oloworay_autos/constants/app_dimensions.dart';
import 'package:oloworay_autos/widgets/default_elevated_button.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';

class SellPage extends StatelessWidget {
  const SellPage({super.key});

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimension.width20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Selling a car?\nIt\'s very simple',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.text,
                    fontSize: AppDimension.font14
                ),),
              SizedBox(height: AppDimension.height24),
              Text('Publish your ad today!',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontSize: AppDimension.font12,
                    color: AppColors.black80
                ),),
              SizedBox(height: AppDimension.height40),
              DefaultElevatedButton(
                  buttonStyle: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.neutral500,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.black60
                  ),
                  bText: 'Create your ad',
                  press: (){}),
              SizedBox(height: AppDimension.height20),
              DefaultElevatedButton(bText: 'Verify your identity', press: (){}),
              SizedBox(height: AppDimension.height20),
              SizedBox(
                width: AppDimension.getProportionateScreenWidth(259),
                child: Text(
                  'This helps us verify your business and keep Oloworay autos a trusted market place.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppColors.black60,
                    fontSize: AppDimension.font12,
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
