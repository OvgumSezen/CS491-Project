import 'package:bitirapp/controller/session_controller/session_controller.dart';
import 'package:bitirapp/pages/login/login_screen.dart';
import 'package:bitirapp/pages/restaurant/restaurant.dart';
import 'package:bitirapp/pages/settings/settings_try.dart';
import 'package:bitirapp/pages/search/try_page.dart';
import 'package:bitirapp/pages/cart/try2_page.dart';
import 'package:bitirapp/pages/walkthrought/walk1.dart';
import 'package:bitirapp/pages/walkthrought/walkpage.dart';
import 'package:flutter/material.dart';
import 'package:bitirapp/pages/home/home.dart';
import 'package:bitirapp/pages/settings/settings_page.dart';

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
      //initialRoute: '/walk',
      initialRoute: '/homePage',
      routes: {

        '/homePage': (context) => const HomePage(),
        '/settings': (context) => const SettingsPage(),
        '/restaurant': (context) => RestaurantPage(restaurant: Singleton.instance.SelectedRestaurant),
        '/try': (context) => const TryPage(),
        '/try2': (context) => const Try2Page(),
        '/loginScreen': (context) => (LoginScreen()),
        '/One': (context) => (const Walk1()),
        '/settingsTry': (context) => (const SettingsTry()),
        '/walk': (context) => (const Walk()),
      },
    );
  }
}
