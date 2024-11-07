import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController2 extends GetxController {
  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      updateOffset(scrollController.offset);
    });
  }
  RxDouble offsett = 0.0.obs;
  var selectedIndex = 0.obs;
  void scrollTo(double offset, int index) {

    selectedIndex.value = index;
    scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void updateIndex(int index) {
    selectedIndex.value = index;
  }
  void updateOffset(double offset) {
    offsett.value = offset;
  }
}