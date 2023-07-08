import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oloworay_autos_/constants/app_colors.dart';
import 'package:oloworay_autos_/constants/app_dimensions.dart';
import 'package:oloworay_autos_/constants/app_strings.dart';
import 'package:oloworay_autos_/widgets/default_elevated_button.dart';

class MessagesBody extends StatefulWidget {
  const MessagesBody({super.key});

  @override
  State<MessagesBody> createState() => _MessagesBodyState();
}

class _MessagesBodyState extends State<MessagesBody> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/message_bg.svg',
            height: AppDimension.getProportionateScreenHeight(64),
            width: AppDimension.getProportionateScreenWidth(64),
          ),
          SizedBox(height: AppDimension.height24),
          Text(
            'You can now message your favourite dealer!',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: AppDimension.font14, color: AppColors.black100),
          ),
          Text(
            'Hmm, looks like there are no new messages',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: AppDimension.font12, color: AppColors.fade),
          ),
        ],
      ),
    );
  }
}
