import 'package:bitirapp/bars/buttom_bar.dart';
import 'package:bitirapp/controller/session_controller/session_controller.dart';
import 'package:bitirapp/model/user/food_category_model.dart';
import 'package:bitirapp/model/user/food_model.dart';
import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import '../../model/user/restaurant_model.dart';

class RestaurantPage extends StatefulWidget {
  final Restaurant restaurant;
  RestaurantPage({Key? key, required this.restaurant}) : super(key: key);

  static Route route({required Restaurant restaurant}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: "/restaurant"),
      builder: (context) => RestaurantPage(restaurant: restaurant),
    );
  }

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  FoodCategory? selectedCategory;
  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const BackButton(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: FavoriteButton(
              iconColor: Colors.black,
              isFavorite: widget.restaurant.isFavorite,
              valueChanged: (_isFavorite) {
                setState(() {
                  widget.restaurant.isFavorite = _isFavorite;
                });
                print('Is Favorite : $_isFavorite');
                print(widget.restaurant.isFavorite);
              },
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(widget.restaurant.image,
                width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        widget.restaurant.name,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 15.0, 0),
                        child: Text(
                          "Rating: " + widget.restaurant.rating.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.grey[600]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 15.0, 0),
                        child: Text(
                          "•  " + widget.restaurant.category,
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
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  color: Colors.greenAccent.shade400,
                  icon: const Icon(Icons.map),
                  onPressed: () {
                    print("Map");
                  },
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Menu",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    color: Colors.black,
                    icon: const Icon(Icons.filter_alt),
                    onPressed: () {
                      print("Filter");
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 75,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.restaurant.foodCategories.length,
              itemBuilder: ((context, index) {
                return FoodCategoryButton(
                  category: widget.restaurant.foodCategories[index],
                  notifyParent: () => setState(() {}),
                );
              }),
            ),
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.restaurant.foods.length,
              itemBuilder: ((context, index) {
                if (widget.restaurant.foods[index].foodCategory ==
                    Singleton.instance.selectedCategory) {
                  return FoodItemCard(foodItem: widget.restaurant.foods[index]);
                } else if (Singleton.instance.selectedCategory ==
                        "All Listed Items" ||
                    Singleton.instance.selectedCategoryRestaurant == "All") {
                  return FoodItemCard(
                      foodItem: widget.restaurant.foods[index]);
                }
                return Container();
              }))
        ]),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex: 0,
      ),
    );
  }
}

class FoodItemCard extends StatelessWidget {
  final Food foodItem;
  const FoodItemCard({
    Key? key,
    required this.foodItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset(foodItem.image),
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
                  foodItem.name,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  foodItem.foodCategory,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.grey[600]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  foodItem.price.toString() + " \$",
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
              icon: const Icon(Icons.add),
              onPressed: () {
                print("Add to cart");
                Singleton.instance.cart.add(foodItem);
                print(Singleton.instance.cart);
              },
            ),
          )
        ],
      ),
    );
  }
}

class FoodCategoryButton extends StatelessWidget {
  final Function() notifyParent;
  final FoodCategory category;
  const FoodCategoryButton({
    Key? key,
    required this.category,
    required this.notifyParent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: 100,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.greenAccent.shade400,
          ),
          child: TextButton(
              child: Text(
                category.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.black),
              ),
              onPressed: () {
                print(Singleton.instance.selectedCategory);
                print(category.name);
                Singleton.instance.selectedCategory = category.name;
                print(Singleton.instance.selectedCategory);
                print(category.name);
                if (Singleton.instance.selectedCategory == "All") {
                  Singleton.instance.selectedCategory = "All Listed Items";
                }
                print(Singleton.instance.selectedCategory);
                notifyParent();
              })),
    );
  }
}
