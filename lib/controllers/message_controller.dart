import 'package:get/get.dart';

import '../models/message_model.dart';
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

  //Demo messages
  var userMessages = <Message>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchAllMessagedUsers();
    fetchUserMessages();
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

  void fetchUserMessages() async{
    var userMessagesData = [
      Message(
          textMessage: 'Hey Whatsup',
          senderId: 'user1',
          senderUserName: 'sender1',
          receiverId: 'user2',
          timeStamp: DateTime.now().subtract(Duration(days: 5)),
          isSentByMe: true),
      Message(
          textMessage: 'Hey I\'m good, you?',
          senderId: 'user2',
          senderUserName: 'sender2',
          receiverId: 'user1',
          timeStamp: DateTime.now().subtract(Duration(days: 5)),
          isSentByMe: false),
      Message(
          textMessage: 'Boss, I want to get a new car',
          senderId: 'user1',
          senderUserName: 'sender1',
          receiverId: 'user2',
          timeStamp: DateTime.now().subtract(Duration(days: 3)),
          isSentByMe: true),
      Message(
          textMessage: 'You deal all states?',
          senderId: 'user1',
          senderUserName: 'sender1',
          receiverId: 'user2',
          timeStamp: DateTime.now().subtract(Duration(days: 3)),
          isSentByMe: true),
      Message(
          textMessage: 'Yeah, sure. What\'s your taste?\n What bran do you have in mind?',
          senderId: 'user2',
          senderUserName: 'sender2',
          receiverId: 'user1',
          timeStamp: DateTime.now().subtract(Duration(days: 3)),
          isSentByMe: false),
      Message(
          textMessage: 'Hmmm, I\'m thinking of getting a Lambo this time',
          senderId: 'user1',
          senderUserName: 'sender1',
          receiverId: 'user2',
          timeStamp: DateTime.now().subtract(Duration(days: 3)),
          isSentByMe: true),
      Message(
          textMessage: 'Sure, we\'ve got all varieties of vehicles here',
          senderId: 'user2',
          senderUserName: 'sender2',
          receiverId: 'user1',
          timeStamp: DateTime.now().subtract(Duration(days: 2)),
          isSentByMe: false),
      Message(
          textMessage: 'Sport or Luxury or a combo',
          senderId: 'user2',
          senderUserName: 'sender2',
          receiverId: 'user1',
          timeStamp: DateTime.now().subtract(Duration(days: 2)),
          isSentByMe: false),
      Message(
          textMessage: 'Let me get a combo, and I also want a Maybach',
          senderId: 'user1',
          senderUserName: 'sender1',
          receiverId: 'user2',
          timeStamp: DateTime.now().subtract(Duration(days: 1)),
          isSentByMe: true),
      Message(
          textMessage: 'Alright, here are some new arrivals:',
          senderId: 'user2',
          senderUserName: 'sender2',
          receiverId: 'user1',
          timeStamp: DateTime.now().subtract(Duration(days: 1)),
          isSentByMe: false),
      Message(
          textMessage: 'Cool, so cool',
          senderId: 'user1',
          senderUserName: 'sender1',
          receiverId: 'user2',
          timeStamp: DateTime.now().subtract(Duration(hours: 3)),
          isSentByMe: true),
      Message(
          textMessage: 'You like them',
          senderId: 'user2',
          senderUserName: 'sender2',
          receiverId: 'user1',
          timeStamp: DateTime.now().subtract(Duration(hours: 1)),
          isSentByMe: false),
      Message(
          textMessage: 'Sure, I\'m def getting both',
          senderId: 'user1',
          senderUserName: 'sender1',
          receiverId: 'user2',
          timeStamp: DateTime.now().subtract(Duration(hours: 1)),
          isSentByMe: true),
    ].reversed.toList();

    userMessages.value = userMessagesData;
  }
}