import 'package:flutter/material.dart';

class AppBarWidgetIcon extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  AppBarWidgetIcon(this.preferredSize, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 45),
        child: Stack(
          children: [
            Container(
              width: 375,
              height: 45, //41'di

              child: Center(
                  child: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              )),
            ),
            IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)
            ),
          ],
        ),
      ),
    );
  }
}
