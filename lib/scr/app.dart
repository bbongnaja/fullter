
import 'package:flutter/material.dart';
import 'package:my_login_naja/scr/pages/app_routes.dart';
import 'package:my_login_naja/scr/pages/login/login_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      routes: AppRoute.all,
      home: LoginPage(),
    );
  }
}