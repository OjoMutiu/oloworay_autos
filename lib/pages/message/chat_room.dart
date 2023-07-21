import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:oloworay_autos/constants/app_colors.dart';
import 'package:oloworay_autos/controllers/message_controller.dart';

import '../../constants/app_dimensions.dart';
import '../../constants/app_strings.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({super.key});

  @override
  Widget build(BuildContext context) {
    MessageController messageController = Get.find();
    return Scaffold(
      //AppBar
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: SvgPicture.asset(
              backArrow,
              width: AppDimension.height20,
              height: AppDimension.height20,
            )),

        //Title
        title: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.secondary500,
                child: Text(
                  'G',
                  style: TextStyle(
                      fontSize: AppDimension.font24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              SizedBox(width: AppDimension.width12),
              Text(
                'Oloworay autos',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.text,
                      fontSize: AppDimension.font16,
                    ),
              ),
            ],
          ),
        ),

        //Call icon button
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppDimension.width20),
            child: IconButton(
                onPressed: () {

                  //Bottom sheet set up

                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context){
                        return Padding(
                          padding: EdgeInsets.only(bottom: AppDimension.height52),
                          child: Container(
                           // height: AppDimension.getProportionateScreenHeight(170),
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(bottom: AppDimension.height4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(AppDimension.height6)
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: AppDimension.height20, bottom: AppDimension.height12),
                                        child: Text('Call', style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                          fontSize: AppDimension.font12,
                                          color: AppColors.text
                                        ),),
                                      ),
                                      Divider(
                                        thickness: AppDimension.getProportionateScreenHeight(0.5),
                                        color: AppColors.neutral500,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: AppDimension.height12, bottom: AppDimension.height12+1),
                                        child: Text('+234 8168051247', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                          fontSize: AppDimension.font16,
                                          color: AppColors.black100
                                        ),),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(AppDimension.height6)
                                  ),
                                  child: TextButton(
                                    onPressed: (){
                                      Get.back();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(vertical: AppDimension.height15),
                                      child: Text('Cancel',style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                        fontSize: AppDimension.font16,
                                        color: AppColors.text,
                                      ), ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                icon: SvgPicture.asset('assets/icons/callout_handset.svg')),
          )
        ],
        backgroundColor: Colors.white,
      ),

      //Body of chat room
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Car, car model, and car price
            Container(
              height: AppDimension.getProportionateScreenHeight(80),
              margin: EdgeInsets.only(bottom: AppDimension.height12),
              padding: EdgeInsets.symmetric(
                  horizontal: AppDimension.width12,
                  vertical: AppDimension.height12),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/home/image10.png'),
                  Text(
                    '2020 Toyota Camry white',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.black100,
                          fontSize: AppDimension.font16,
                        ),
                  ),
                  Text(
                    'N10M',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColors.black100,
                          fontSize: AppDimension.font16,
                        ),
                  )
                ],
              ),
            ),
            SizedBox(height: AppDimension.height10),

            //Messages
            Expanded(
                child: Obx(
                  () =>  ListView.builder(
                    reverse: true,
                    itemCount: messageController.userMessages.length,
                    itemBuilder: (BuildContext context, int index) {
                      String date = DateFormat.Hm().format(messageController.userMessages[index].timeStamp);
                      return Padding(
                        padding: EdgeInsets.only(
                            left: AppDimension.width20,
                            right: AppDimension.width24,
                            top: AppDimension.height10,
                            bottom: AppDimension.height16),
                        child: Align(
                          alignment: messageController.userMessages[index].isSentByMe
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: AppDimension.getProportionateScreenWidth(280)),
                            padding: EdgeInsets.symmetric(
                                horizontal: AppDimension.width12,
                                vertical: AppDimension.height8),
                            decoration: BoxDecoration(
                                color: messageController.userMessages[index].isSentByMe
                                    ? AppColors.primary200
                                    : AppColors.neutral300,
                                borderRadius:
                                    BorderRadius.circular(AppDimension.height6)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: AppDimension.getProportionateScreenWidth(213)),
                              child: Text(
                                messageController.userMessages[index].textMessage,
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.black100,
                                    fontSize: AppDimension.font14),
                              ),
                            ),
                      ),
                    ),
                  );
              },
            ),
                )),

            //Warning
            Padding(
              padding: EdgeInsets.only(
                  left: AppDimension.width6,
                  //right: AppDimension.width10,
                  top: AppDimension.height10,
                  bottom: AppDimension.height16),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppDimension.width4),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: AppDimension.width8,
                          top: AppDimension.height12,
                          bottom: AppDimension.height12),
                      child: SvgPicture.asset(
                        'assets/icons/warning.svg',
                        height: AppDimension.height24,
                        width: AppDimension.height24,
                        colorFilter:
                            ColorFilter.mode(AppColors.black60, BlendMode.srcIn),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppDimension.width12,
                          vertical: AppDimension.height12),
                      child: Text(
                        'Please do not make payment in advance without\n car inspection',
                        style: TextStyle(
                          color: AppColors.black60,
                          fontSize: AppDimension.font12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            //New Message textField
            Container(
              padding: EdgeInsets.only(
                  left: AppDimension.width20,
                  right: AppDimension.width20,
                  top: AppDimension.getProportionateScreenHeight(9),
                  bottom: AppDimension.getProportionateScreenHeight(32)),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: const Offset(0, 3))
              ]),
              child: GetBuilder<MessageController>(
                builder: (controller){
                  return Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            fontSize: AppDimension.font12,
                            color: AppColors.black60,
                          ),
                          controller: messageController.textEditingController,
                          focusNode: controller.focusNode,
                          decoration: InputDecoration(
                              hintText: 'Type your message',
                              hintStyle:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                fontSize: AppDimension.font12,
                                color: AppColors.black60,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none),
                          onSubmitted: (message){
                            messageController.onSubmitted(messageController.textEditingController);
                          },
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/clip.svg')),
                      if(controller.focusNode.hasFocus)
                        IconButton(
                            onPressed: () {
                              messageController.onSubmitted(messageController.textEditingController);
                            },
                            icon: SvgPicture.asset('assets/icons/send.svg'))
                    ],
                  );
                },
              )
            ),
          ],
        ),
    );
  }
}

// Text(
//   date,
//   style: Theme.of(context).textTheme.labelSmall?.copyWith(
//       color: AppColors.black100,
//       fontSize: AppDimension.font10),
// ),

// Container(
// alignment: Alignment.bottomRight,
// child: Text(
// date,
// textAlign: TextAlign.right,
// style: Theme.of(context).textTheme.labelSmall?.copyWith(
// color: AppColors.black100,
// fontSize: AppDimension.font10),
// ),
// ),
// if(messageController.userMessages[index].isSentByMe)
// SvgPicture.asset('assets/icons/tick.svg')