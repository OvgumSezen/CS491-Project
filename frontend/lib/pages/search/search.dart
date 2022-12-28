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

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var searchText = '';
  var filteredList = [];

  @override
  void initState() {
    super.initState();
    filteredList = [];
    for (Restaurant res in Singleton.instance.restaurantList) {
      if (!searchText.isEmpty) {
        if (res.name.toLowerCase().contains(searchText.toLowerCase())) {
          filteredList.add(res);
        }
      }
    }
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    filteredList = [];
    for (Restaurant res in Singleton.instance.restaurantList) {
      if (!searchText.isEmpty) {
        if (res.name.toLowerCase().contains(searchText.toLowerCase())) {
          filteredList.add(res);
        }
      }
    }
  }

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.search),
          color: Colors.greenAccent.shade400,
          onPressed: () {
            print(searchText);
          },
        ),
        title: TextField(
          onChanged: (content) {
            searchText = content;
            setState(() {});
          },
          decoration: InputDecoration(
            hintText: 'Type restaurant name',
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
            border: InputBorder.none,
          ),
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
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
                itemCount: filteredList.length,
                itemBuilder: ((context, index) {
                  if (filteredList[index].category ==
                      Singleton.instance.selectedCategoryRestaurant) {
                    return RestaurantCard(restaurant: filteredList[index]);
                  } else if (Singleton.instance.selectedCategoryRestaurant ==
                          "Popular Restaurants" ||
                      Singleton.instance.selectedCategoryRestaurant ==
                          "All Restaurants") {
                    return RestaurantCard(restaurant: filteredList[index]);
                  }
                  return Container();
                }))
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex: 1,
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
                    Singleton.instance.selectedCategoryRestaurant =
                        category.name;
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
