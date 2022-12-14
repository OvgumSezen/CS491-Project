import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final currentIndex;
  const MyBottomNavigationBar({super.key, required this.currentIndex});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      selectedFontSize: 14,
      selectedItemColor: Color.fromRGBO(38, 202, 92, 1.0),
      unselectedItemColor: Color.fromRGBO(157, 157, 157, 1.0),
      currentIndex: widget.currentIndex,
      onTap: (index) => {
        print(index),
        if (index == 0)
          {
            Navigator.pushReplacementNamed(context, '/homePage'),
          }
        else if (index == 1)
          {Navigator.pushReplacementNamed(context, '/try')}
        else if (index == 2)
            {Navigator.pushReplacementNamed(context, '/try2')}
        else if (index == 3)
          {
            Navigator.pushReplacementNamed(context, '/settingsTry'),
          },
      },
      iconSize: 30.0,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(widget.currentIndex != 0
              ? Icons.home_outlined
              : Icons.home,),
          label: 'Home',


          //backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(widget.currentIndex != 1
              ? Icons.search_outlined
              : Icons.search),
          label: 'Search',
          //backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(widget.currentIndex != 2
              ? Icons.shopping_cart_outlined
              : Icons.shopping_cart),
          label: 'Cart',
          //backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(widget.currentIndex != 3
              ? Icons.settings_outlined
              : Icons.settings),
          label: 'Settings',
          //backgroundColor: Colors.black,
        ),
      ],
    );
  }
}
