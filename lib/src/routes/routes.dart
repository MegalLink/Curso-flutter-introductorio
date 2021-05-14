import 'package:contador_app/src/pages/alert_page.dart';
import 'package:contador_app/src/pages/avatar_page.dart';
import 'package:contador_app/src/pages/card_page.dart';
import 'package:contador_app/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAppRoutes(BuildContext context) {
  return {
    '/': (context) => HomePage(),
    'alert': (context) => AlertPage(),
    'avatar': (context) => AvatarPage(),
    'card': (context) => CardPage(),
  };
}
