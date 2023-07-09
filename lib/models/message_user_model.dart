
import 'package:flutter/cupertino.dart';

class MessagedUsers{
  final String userName;
  final String profileImage;
  final String lastMessage;
  final String lastUserMessageTimeStamp;
  final bool isOpened;
  final int noOfMessages;

  MessagedUsers({
    required this.userName,
    required this.profileImage,
    required this.lastMessage,
    required this.lastUserMessageTimeStamp,
    this.isOpened = false,
    this.noOfMessages = 0,
  });
}