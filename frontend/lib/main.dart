import 'package:bitirapp/controller/session_controller/session_controller.dart';
import 'package:bitirapp/pages/login/login_screen.dart';
import 'package:bitirapp/pages/restaurant/restaurant.dart';
import 'package:bitirapp/pages/search/search.dart';
import 'package:bitirapp/pages/settings/settings_try.dart';
import 'package:bitirapp/pages/cart/cart.dart';
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
        '/restaurant': (context) =>
            RestaurantPage(restaurant: Singleton.instance.SelectedRestaurant),
        '/search': (context) => const SearchPage(),
        '/cart': (context) => const CartPage(),
        '/loginScreen': (context) => (LoginScreen()),
        '/One': (context) => (const Walk1()),
        '/settingsTry': (context) => (const SettingsTry()),
        '/walk': (context) => (const Walk()),
      },
    );
  }
}
