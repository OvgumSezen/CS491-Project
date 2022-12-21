import 'package:bitirapp/controller/session_controller/session_controller.dart';
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
    double totalCost = 0;
    List<Widget> foodList = [];
    Singleton.instance.cart.forEach((element) {
      totalCost += element.price;
      foodList.add(AppBar(
        leading: Image.asset(element.image),
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    element.name,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    element.foodCategory,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.grey[600]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    element.price.toString() + " \$",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                color: Colors.black,
                icon: const Icon(Icons.remove),
                onPressed: () {
                  Singleton.instance.cart.remove(element);
                  setState(() {});
                  print(Singleton.instance.cart);
                },
              ),
            )
          ],
        ),
      ));
    });
    foodList.add(Row(children: [
      Text("Price: " + totalCost.toString()),
      ElevatedButton(
          onPressed: () => {
                Singleton.instance.cart.forEach((element) {
                  print(element.image);
                })
              },
          child: Text('Checkout'))
    ]));
    Column foodColumn = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
    );

    return Scaffold(
      appBar: AppBarWidget2(Size.fromHeight(60.0), "Cart"),
      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex: 2,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: foodList),
    );
  }
}
