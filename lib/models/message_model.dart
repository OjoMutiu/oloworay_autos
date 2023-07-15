import 'package:flutter/material.dart';

class Message {
  final String textMessage;
  final String senderId;
  final String senderUserName;
  final String receiverId;
  final DateTime timeStamp;
  final bool isSentByMe;

  Message({
    required this.textMessage,
    required this.senderId,
    required this.senderUserName,
    required this.receiverId,
    required this.timeStamp,
    required this.isSentByMe
  });
}

