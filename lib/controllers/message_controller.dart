import 'package:get/get.dart';

class MessageController extends GetxController{
  bool _isFirstVisit = true;

  bool get isFirstVisit => _isFirstVisit;

  set isFirstVisit(bool value) {
    _isFirstVisit = value;
    update();
  }
}