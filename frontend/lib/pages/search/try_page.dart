import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';
import 'package:bitirapp/bars/buttom_bar.dart';

class TryPage extends StatefulWidget {
  const TryPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TryPageState createState() => _TryPageState();
}

class _TryPageState extends State<TryPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget2(Size.fromHeight(60.0), "Search"),
      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex:1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(height: 100, width: 40000, child: Text('try page search'))
        ],
      ),
    );
  }
}
