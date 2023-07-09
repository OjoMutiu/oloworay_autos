import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oloworay_autos/controllers/message_controller.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_dimensions.dart';
import '../../constants/app_strings.dart';

class AvailableUsers extends StatelessWidget {
  const AvailableUsers({super.key});

  @override
  Widget build(BuildContext context) {
    MessageController controller = Get.find();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: SvgPicture.asset(
                backArrow,
                width: AppDimension.height20,
                height: AppDimension.height20,
              )),
          title: Text(
            'Message',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.text, fontSize: AppDimension.height16),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
              itemCount: controller.allMessagedUsers.length,
              itemBuilder: (context, index) {
                String lastUserMessage = '';

                if (controller.allMessagedUsers[index].lastMessage.length >
                    AppDimension.getProportionateScreenWidth(25)) {
                  lastUserMessage =
                      '${controller.allMessagedUsers[index].lastMessage.substring(0, AppDimension.getProportionateScreenWidth(28).toInt())}...';
                } else {
                  lastUserMessage =
                      controller.allMessagedUsers[index].lastMessage;
                }

                return GestureDetector(
                  onTap: () {
                    //Todo: Navigate users to CHatPage on tap
                  },
                  child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(
                          left: AppDimension.width20,
                          right: AppDimension.width16,
                          top: AppDimension.height16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(
                                      controller
                                          .allMessagedUsers[index].profileImage,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: AppDimension.width12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          controller
                                              .allMessagedUsers[index].userName,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  color: AppColors.text,
                                                  fontSize: AppDimension.font14),
                                        ),
                                        controller
                                                .allMessagedUsers[index].isOpened
                                            ? Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      'assets/icons/tick.svg'),
                                                  SizedBox(
                                                      width: AppDimension.width4),
                                                  Text(
                                                    lastUserMessage,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelSmall
                                                        ?.copyWith(
                                                            fontSize: AppDimension
                                                                .font12,
                                                            color:
                                                                AppColors.fade),
                                                  )
                                                ],
                                              )
                                            : Text(
                                                lastUserMessage,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall
                                                    ?.copyWith(
                                                        fontSize:
                                                            AppDimension.font12,
                                                        color: AppColors.fade),
                                              )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.allMessagedUsers[index]
                                        .lastUserMessageTimeStamp,
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(
                                            fontSize: AppDimension.font12,
                                            color: AppColors.fade),
                                  ),
                                  const Text('')
                                ],
                              )
                            ],
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  left: AppDimension.width52,
                                  top: AppDimension.height10),
                              child: const Divider(
                                thickness: 0.5,
                                color: AppColors.fade,
                              ))
                        ],
                      )),
                );
              }),
        ),
      ),
    );
  }
}
