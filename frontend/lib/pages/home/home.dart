import 'package:bitirapp/constant/constant.dart';
import 'package:bitirapp/controller/session_controller/session_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';
import 'package:bitirapp/bars/buttom_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:bitirapp/model/user/category_model.dart';
import 'package:bitirapp/model/user/restaurant_model.dart';

import '../walkthrought/walk1.dart';
import '../walkthrought/walk2.dart';

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
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: HomeAppWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Singleton.instance.categories.length,
                itemBuilder: ((context, index) {
                  return CategoryButton(
                    category: Singleton.instance.categories[index],
                    notifyParent: () => setState(() {}),
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  Singleton.instance.selectedCategoryRestaurant,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.grey[900]),
                ),
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Singleton.instance.restaurantList.length,
                itemBuilder: ((context, index) {
                  if (Singleton.instance.restaurantList[index].category ==
                      Singleton.instance.selectedCategoryRestaurant) {
                    return RestaurantCard(
                        restaurant: Singleton.instance.restaurantList[index]);
                  } else if (Singleton.instance.selectedCategoryRestaurant ==
                          "Popular Restaurants" ||
                      Singleton.instance.selectedCategoryRestaurant ==
                          "All Restaurants") {
                    return RestaurantCard(
                        restaurant: Singleton.instance.restaurantList[index]);
                  }
                  return Container();
                }))
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex: 0,
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantCard({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(restaurant.name);
        Singleton.instance.SelectedRestaurant = restaurant;
        Navigator.pushNamed(context, '/restaurant');
      },
      child: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        leading: Image.asset(restaurant.image),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              restaurant.name,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.grey[900]),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Rating:" + restaurant.rating.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.grey[900]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    restaurant.category,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.grey[600]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    restaurant.deliveryTime.toString() + " min",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final Function() notifyParent;
  final Category category;
  const CategoryButton({
    Key? key,
    required this.category,
    required this.notifyParent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: 100,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.greenAccent.shade400,
          ),
          child: Column(
            children: [
              IconButton(
                  iconSize: 50,
                  icon: Image.asset(category.imageUrl),
                  onPressed: () {
                    print(Singleton.instance.selectedCategoryRestaurant);
                    Singleton.instance.selectedCategoryRestaurant = category.name;
                    if (Singleton.instance.selectedCategoryRestaurant ==
                        "All Restaurants") {
                      Singleton.instance.selectedCategoryRestaurant =
                          "Popular Restaurants";
                    } 
                    print(Singleton.instance.selectedCategoryRestaurant);
                    notifyParent();
                  }),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  category.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.black),
                ),
              ),
            ],
          )),
    );
  }
}

class HomeAppWidget extends StatelessWidget with PreferredSizeWidget {
  HomeAppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.location_on),
        color: Colors.greenAccent.shade400,
        onPressed: () {},
      ),
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Singleton.instance.user.addressType,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.grey[900]),
          ),
          Text(
            Singleton.instance.user.address,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}
