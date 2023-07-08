import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oloworay_autos_/constants/app_colors.dart';
import 'package:oloworay_autos_/constants/app_dimensions.dart';
import 'package:oloworay_autos_/controllers/message_controller.dart';

import '../../controllers/main_homepage_controller.dart';
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

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
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
      ),
      // Get.find<MyController>().isFirstVisit = false
    );
  }


void _buildBottomSheet() async {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Colors.blue,
          child: const Text('Hey'),
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