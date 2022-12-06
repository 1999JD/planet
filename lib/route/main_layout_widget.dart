import 'package:planet/ux/page/cart.dart';
import 'package:planet/ux/page/error.dart';
import 'package:flutter/material.dart';
import 'package:planet/ux/page/home.dart';

class MainLayoutWidget {
  static Widget generateWidget(int widgetIndex) {
    late Widget page;
    if (widgetIndex == 0) {
      page = Home();
    } else if (widgetIndex == 1) {
      page = CartPage();
    }
    return page;
  }
}
