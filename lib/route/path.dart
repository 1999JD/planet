import 'package:flutter/material.dart';
import 'package:planet/ux/page/sign/index.dart';
import 'package:planet/ux/page/error.dart';
import 'package:planet/ux/page/splash.dart';
import 'package:planet/ux/page/main_layout/index.dart';

class Path {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    late Widget page;

    if (settings.name == '/') {
      page = const Splash();
    } else if (settings.name == '/sign') {
      page = const Sign();
    } else if (settings.name!.startsWith('/main/')) {
      final subRoute = settings.name!.substring('/main'.length);
      page = MainLayout(
        setupPageRoute: subRoute,
      );
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
