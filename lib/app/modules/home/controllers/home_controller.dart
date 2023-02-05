import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  Color color(selected) {
    return selectedIndex.value == selected
        ? const Color(0xFFCC9D76)
        : Colors.black;
  }
}
