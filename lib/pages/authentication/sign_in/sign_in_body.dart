import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oloworay_autos/pages/authentication/sign_in/sign_in_form.dart';


import '../../../constants/app_colors.dart';
import '../../../constants/app_dimensions.dart';
import '../../../constants/app_routes.dart';
import '../../../constants/app_strings.dart';
import '../../../controllers/sign_in_controller.dart';
import '../../../widgets/auth_page_header_section.dart';
import '../../../widgets/default_elevated_button.dart';
import '../../../widgets/row_text_textButton.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  UserSignInFormController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppDimension.width20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderSection(hText: siTitle, sText: siSubtitle),
                    const SignInForm(),
                  ]
              )
          ),
          SizedBox(height: AppDimension.height8),
          Padding(
            padding: EdgeInsets.only(left: AppDimension.width10, right: AppDimension.width20),
            child: Row(
              children: [
                Obx(
                      () => Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppDimension.height6)
                    ),
                    value: controller.remember.value,
                    activeColor: AppColors.primary500,
                    onChanged: (value) {
                      controller.remember.value = value! ;
                    },
                    checkColor: Colors.white,
                  ),
                ),
                Text('Remember me', style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(
                    fontSize: AppDimension.font14,
                    color: AppColors.textBody)),
                const Spacer(),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(Routes.forgetPassword);
                  },
                  child: Text('Forgot Password?',style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(
                      fontSize: AppDimension.font14,
                      color: AppColors.primary500)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimension.width20),
            child: Column(
            children: [
              SizedBox(height: AppDimension.getProportionateScreenHeight(40.0)),
              DefaultElevatedButton(
                  bText: bLogin,
                  press: () {
                    controller.submitSignInForm();
                  }),
              SizedBox(height: AppDimension.height20),
              RowTextButton(
                  tap: () {
                    Get.toNamed(Routes.signUpPage);
                  },
                  rowText: 'Don\'t have an account? ',
                  rowButton: 'Register'),
            ],
          ),)
        ],
      ),
    );
  }
}
