import 'package:curso02_flutter/login_pag.dart';
import 'package:flutter/material.dart';
import 'app_controller.dart';
import 'home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDarkTheme ? Brightness.dark: Brightness.light
          ),
          initialRoute: '/',
          routes: {
            '/':(cotext) => LoginPage(),
            '/home':(cotext) => HomePage(),
          }
        );
      },);
  }
}