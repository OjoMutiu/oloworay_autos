import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oloworay_autos/pages/authentication/sign_up/sign_up_form.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_dimensions.dart';
import '../../../constants/app_strings.dart';
import '../../../controllers/sign_up_controller.dart';
import '../../../widgets/auth_page_header_section.dart';
import '../../../widgets/default_elevated_button.dart';
import '../../../widgets/row_text_textButton.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  UserSignUpFormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    //_controller.countries = CountryCode.getAllCountries();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimension.getProportionateScreenWidth(20.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderSection(
                  hText: sTitle,
                  sText: sSubtitle,
                ),
                const SignUpForm(),
              ],
            ),
          ),
          SizedBox(height: AppDimension.getProportionateScreenHeight(8.0)),
          //Todo: render flow error
          Row(
            children: [
              Spacer(),
              Obx(() {
                return Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppDimension.height6)
                  ),
                  value: controller.agree.value,
                  activeColor: AppColors.primary500,
                  onChanged: (value) {
                    controller.agree.value = value!;
                  },
                  checkColor: Colors.white,
                );
              }),
              Text(
                termsAndService,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(
                    fontSize: AppDimension.font14,
                    color: AppColors.textBody),
              ),
              GestureDetector(
                onTap: () {
                  //TODO: Navigate to terms and service page
                },
                child: Text(
                  termsAndServiceBtn,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(
                      fontSize: AppDimension.font14,
                      color: AppColors.primary500),
                ),
              ),
              Spacer(flex: 2),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimension.getProportionateScreenWidth(20.0)),
            child: Column(
              children: [
                SizedBox(
                    height: AppDimension.getProportionateScreenHeight(40.0)),
                DefaultElevatedButton(
                    bText: bRegister,
                    press: () {
                      controller.submitSignUpForm();
                    }),
                SizedBox(
                    height: AppDimension.getProportionateScreenHeight(20.0)),
                RowTextButton(
                    tap: () {
                      Get.toNamed('/signInPage');
                    },
                    rowText: 'Already have an account? ',
                    rowButton: 'Login'),
                SizedBox(
                    height: AppDimension.getProportionateScreenHeight(70.0)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}