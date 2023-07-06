import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_dimensions.dart';
import '../../../constants/app_routes.dart';
import '../../../constants/app_strings.dart';
import '../../../controllers/forget_password_controller.dart';
import '../../../widgets/auth_page_header_section.dart';
import '../../../widgets/default_elevated_button.dart';
import '../../../widgets/row_text_textButton.dart';
import 'forget_password_form.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController controller = Get.find();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimension.width20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(hText: fTitle, sText: fSubtitle),
            const ForgotPasswordForm(),
            Column(
              children: [
                SizedBox(height: AppDimension.height30),
                DefaultElevatedButton(
                    bText: bSubmit,
                    press: () {
                      controller.submitForgotPasswordForm();
                    }),
                SizedBox(height: AppDimension.height20),
                RowTextButton(
                    tap: () {
                      Get.toNamed(Routes.signInPage);
                    },
                    rowText: 'Back to ',
                    rowButton: 'Login'),
                SizedBox(
                    height: AppDimension.getProportionateScreenHeight(70.0)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
