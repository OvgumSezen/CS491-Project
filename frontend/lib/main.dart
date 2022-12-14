import 'package:bitirapp/pages/settings/settings_try.dart';
import 'package:bitirapp/pages/search/try_page.dart';
import 'package:bitirapp/pages/cart/try2_page.dart';
import 'package:bitirapp/walkthrought/one.dart';
import 'package:flutter/material.dart';
import 'package:bitirapp/pages/home/home.dart';
import 'package:bitirapp/pages/settings/settings_page.dart';
import 'package:bitirapp/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'bitirapp',
      theme: ThemeData(
        //backgroundColor:Color(0xffffffff),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/homePage',
      //initialRoute: '/homePage',
      routes: {

        '/homePage': (context) => const HomePage(),
        '/settings': (context) => const SettingsPage(),
        '/try': (context) => const TryPage(),
        '/try2': (context) => const Try2Page(),
        '/loginScreen': (context) => (LoginScreen()),
        '/One': (context) => (const One()),
        '/settingsTry': (context) => (const SettingsTry()),
      },
    );
  }
}
