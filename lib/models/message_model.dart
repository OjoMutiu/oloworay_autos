import 'package:flutter/material.dart';

class Message {
  final String textMessage;
  final String senderId;
  final String senderUserName;
  final String receiverId;
  final TimeOfDay timeStamp;

  Message({
    required this.textMessage,
    required this.senderId,
    required this.senderUserName,
    required this.receiverId,
    required this.timeStamp
  });
}