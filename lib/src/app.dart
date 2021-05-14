import 'package:contador_app/src/pages/contador_page.dart';
import 'package:contador_app/src/pages/listview_page.dart';
// import 'package:contador_app/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: ListViewPage(),
        ));
  }
}
