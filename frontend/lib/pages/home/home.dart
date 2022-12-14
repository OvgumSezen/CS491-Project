import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';

import 'package:bitirapp/bars/buttom_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarWidget2(Size.fromHeight(60.0), "Home"),

      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex: 0,
      ),
      body: Text("body"),
    );
  }
}
