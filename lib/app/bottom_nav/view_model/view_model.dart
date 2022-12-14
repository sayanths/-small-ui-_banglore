import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {

  int newValue = 0;
  onChange(int value) {
    newValue = value;
    update();
  }
  late PageController pageController;
  final Color navigationBarColor = Colors.white;

  @override
  void onInit() {
pageController = PageController(initialPage: newValue);
    super.onInit();
  }
}
