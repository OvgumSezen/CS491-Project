import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';
import 'package:bitirapp/bars/buttom_bar.dart';

class Try2Page extends StatefulWidget {
  const Try2Page({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Try2PageState createState() => _Try2PageState();
}

class _Try2PageState extends State<Try2Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget2(Size.fromHeight(60.0), "Cart"),
      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex:2,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(height: 100, width: 40000, child: Text('try page cart'))
        ],
      ),
    );
  }
}
