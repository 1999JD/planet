import 'package:flutter/material.dart';
import 'package:planet/ux/page/home.dart';
import 'package:planet/ux/page/sign.dart';
import 'package:planet/ux/page/cart.dart';
import 'package:planet/ux/page/error.dart';

class Path {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    late Widget page;
    if (settings.name == '/home') {
      page = const Home();
    } else if (settings.name == '/sign') {
      page = const Sign();
    } else if (settings.name == '/cart') {
      page = const CartPage();

      // } else if (settings.name == '/sort') {
      //   page = const SortPage();
      // } else if (settings.name!.startsWith('/sort/')) {
      //   final subRoute = settings.name!.substring('/sort'.length);
      //   page = SortInner(
      //     setupPageRoute: subRoute,
      //   );
      // } else if (settings.name == '/search') {
      //   page = const SearchPage();
    } else {
      final String msg = settings.name ?? '';
      page = ErrorPage(message: msg);
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return page;
      },
      settings: settings,
    );
  }
}
