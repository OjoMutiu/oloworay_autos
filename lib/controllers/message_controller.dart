import 'package:get/get.dart';

import '../models/message_user_model.dart';

class MessageController extends GetxController{
  //showing bottomSheet first time
  bool _isFirstVisit = true;

  bool get isFirstVisit => _isFirstVisit;

  set isFirstVisit(bool value) {
    _isFirstVisit = value;
    update();
  }

  //List of all Users

  //List of already messaged dealers/users
  var allMessagedUsers =<MessagedUsers>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchAllMessagedUsers();
  }

  void fetchAllMessagedUsers() async{
    var fetchedData = [
      MessagedUsers(
          userName: 'Oloworay autos',
          profileImage: 'assets/images/message/oloorayautos.png',
          lastMessage: 'Do you ship worldwide?',
          lastUserMessageTimeStamp: '09:02am',
        isOpened: true,

      ),
      MessagedUsers(
          userName: 'Abegautos',
          profileImage: 'assets/images/message/abegautos.png',
          lastMessage: 'What is the last price for the car',
          lastUserMessageTimeStamp: 'Yesterday',
          isOpened: true,
      ),
      MessagedUsers(
          userName: 'Treasureautos',
          profileImage: 'assets/images/message/oloorayautos.png',
          lastMessage: 'Good morning ma\'am, yes you',
          lastUserMessageTimeStamp: '17/04/23',
          isOpened: false,


      ),
      MessagedUsers(
          userName: 'Jaymobile.ng',
          profileImage: 'assets/images/message/jaymobile.png',
          lastMessage: 'Let me confirm please',
          lastUserMessageTimeStamp: '17/04/23',
          isOpened: true,

      ),
      MessagedUsers(
          userName: 'Aquos dealers',
          profileImage: 'assets/images/message/aquosdealer.png',
          lastMessage: 'Do you ship worldwide?',
          lastUserMessageTimeStamp: '17/04/23',
          isOpened: true,

      ),
    ];

    allMessagedUsers.value = fetchedData;
  }
}