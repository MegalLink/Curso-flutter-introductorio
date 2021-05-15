import 'package:contador_app/src/pages/not_found_page.dart';
import 'package:contador_app/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAppRoutes(context),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => NotFoundPage());
      },
    );
  }
}
