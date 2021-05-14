import 'package:contador_app/src/pages/not_found_page.dart';
import 'package:contador_app/src/routes/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAppRoutes(context),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => NotFoundPage());
      },
    );
  }
}
