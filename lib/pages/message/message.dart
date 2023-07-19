import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oloworay_autos/constants/app_routes.dart';
import 'package:oloworay_autos/widgets/default_elevated_button.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_dimensions.dart';
import '../../constants/app_strings.dart';
import '../../controllers/main_homepage_controller.dart';
import '../../controllers/message_controller.dart';
import 'messages_body.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

  HomePageController controller = Get.find();
  bool isFirstVisit = Get.find<MessageController>().isFirstVisit;
  @override
  Widget build(BuildContext context) {

    if(isFirstVisit){
      if ((ModalRoute.of(context)?.isCurrent ?? false)) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _buildBottomSheet();
        });
      }
      Get.find<MessageController>().isFirstVisit = false;
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Center(
          child: Text(
            'Message',
            style: Theme
                .of(context)
                .textTheme
                .titleLarge
                ?.copyWith(
                color: AppColors.text, fontSize: AppDimension.height16),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: const MessagesBody(),

      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary500,
        onPressed: () {
          Get.toNamed(Routes.availableUsers);
        },
        child: Padding(
          padding: EdgeInsets.all(AppDimension.height8),
          child: const Icon(Icons.message_rounded, color: Colors.white,),
        ),
      ),
    );
  }


void _buildBottomSheet() async {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius:BorderRadius.only(
          topRight: Radius.circular(AppDimension.height20),
          topLeft: Radius.circular(AppDimension.height20)
      )
    ),
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(top: AppDimension.getProportionateScreenHeight(78),
              left: AppDimension.getProportionateScreenWidth(33),
              right: AppDimension.getProportionateScreenWidth(33)),
          height: AppDimension.getProportionateScreenHeight(400),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(AppDimension.height20),
              topLeft: Radius.circular(AppDimension.height20)
            )
          ),
          child: Center(
            child: Column(
              children: [
                SvgPicture.asset('assets/icons/warning.svg'),
                SizedBox(height: AppDimension.height24),
                Text('1. Meeting up? Select public places '
                    '\n 2. Do not make payment in advance without car inspection',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.black100,
                    fontSize: AppDimension.font14
                  ),),
                SizedBox(height: AppDimension.height24),
                DefaultElevatedButton(
                    width: AppDimension.getProportionateScreenWidth(157),
                    bText: bContinue, press: (){
                  Get.back();
                })
              ],
            ),
          ),
        );
      });
}

}

//SharedPreferences can be used to preserve the state of the bottom sheet so it's only
//shown once for the entire usage of the app

// bool _showSheet = false;
//
// @override
// void initState() {
//   super.initState();
//   _checkBottomSheetStatus();
// }
//
// Future<void> _checkBottomSheetStatus() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   bool shownBefore = prefs.getBool('bottomSheetShown') ?? false;
//
//   if (!shownBefore) {
//     // If the bottom sheet hasn't been shown before, set _showSheet to true and update the flag in SharedPreferences
//     setState(() {
//       _showSheet = true;
//     });
//     prefs.setBool('bottomSheetShown', true);
//   }
// }