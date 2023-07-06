import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oloworay_autos/pages/authentication/reset_password/reset_password_form.dart';

import '../../../constants/app_dimensions.dart';
import '../../../constants/app_strings.dart';
import '../../../controllers/reset_password_controller.dart';
import '../../../widgets/auth_page_header_section.dart';
import '../../../widgets/default_elevated_button.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordController controller = Get.find();
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.width20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            HeaderSection(hText: siTitle, sText: siSubtitle),
            const ResetPasswordForm(),
            Column(
              children: [
                SizedBox(height: AppDimension.height20),
                SizedBox(height: AppDimension.getProportionateScreenHeight(25.0)),
                DefaultElevatedButton(
                    bText: bReset,
                    press: () {
                      controller.submitResetForm();
                    }),
                SizedBox(height: AppDimension.height12),
              ],
            )
          ])),
    );
  }
}

