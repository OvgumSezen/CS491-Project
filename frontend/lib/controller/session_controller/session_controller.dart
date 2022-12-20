import 'package:bitirapp/model/user/category_model.dart';
import 'package:bitirapp/model/user/food_category_model.dart';
import 'package:bitirapp/model/user/user.dart';
import 'package:bitirapp/model/user/restaurant_model.dart';
import 'package:bitirapp/model/user/food_model.dart';

class Singleton {
  static final Singleton instance = Singleton._internal();

  factory Singleton() {
    return instance;
  }

  Singleton._internal();

  User user = User("5396734333", "Gizem Bal", "gizem@gmail.com", "123456789",
      "Home", "242 ST Marks Eve, Finland ");

  List<Category> categories = [
    Category(
      id: '1',
      name: 'Drinks',
      description: 'This is a test description',
      imageUrl: 'Assets/categories/icons8-champagne-50.png',
      index: 0,
    ),
    Category(
      id: '2',
      name: 'Pizzas',
      description: 'This is a test description',
      imageUrl: 'Assets/categories/icons8-pizza-five-eighths-50.png',
      index: 1,
    ),
    Category(
      id: '3',
      name: 'Burgers',
      description: 'This is a test description',
      imageUrl: 'Assets/categories/icons8-hamburger-50.png',
      index: 2,
    ),
    Category(
      id: '4',
      name: 'Desserts',
      description: 'This is a test description',
      imageUrl: 'Assets/categories/icons8-dessert-50.png',
      index: 3,
    ),
    Category(
      id: '5',
      name: 'Asian',
      description: 'This is a test description',
      imageUrl: 'Assets/categories/icons8-sushi-50.png',
      index: 4,
    ),
  ];

  List<Restaurant> restaurantList = [
    Restaurant(
      id: 1,
      name: 'Pizza Hut',
      phone: "5396734333",
      email: "a@a.com",
      address: "  242 ST Marks Eve, Finland ",
      description: 'This is a test description',
      image: 'Assets/restaurants/pizza_hut.png',
      category: "Pizzas",
      foodCategories: [
    FoodCategory(
      id: '1',
      name: 'Pizzas',
      index: 0,
    ),
    FoodCategory(
      id: '2',
      name: 'Burgers',
      index: 1,
    ),
    FoodCategory(
      id: '3',
      name: 'Desserts',
      index: 2,
    ),
    FoodCategory(
      id: '4',
      name: 'Asian',
      index: 3,
    ),
  ],
      foods: [
    Food(
      id: 1,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 0,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 2,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 1,
      foodCategory: "Burgers"
    ),
    Food(
      id: 3,
      name: 'Ice Cream',
      description: 'This is a test description',
      image: 'Assets/foods/icecream.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 2,
      foodCategory: "Desserts"
    ),
    Food(
      id: 4,
      name: 'Sushi',
      description: 'This is a test description',
      image: 'Assets/foods/sushi.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 3,
      foodCategory: "Asian"
    ),
    Food(
      id: 5,
      name: 'Cupcake',
      description: 'This is a test description',
      image: 'Assets/foods/cupcake.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 4,
      foodCategory: "Desserts"
    ),
    Food(
      id: 6,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 5,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 8,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 6,
      foodCategory: "Burgers"
    )
  ],
      rating: 4.5,
      maxDiscount: 15,
      index: 0,
      deliveryTime: 30,
    ),
    Restaurant(
      id: 2,
      name: 'Burger King',
      phone: "5396734333",
      email: "a@a.com",
      address: "  242 ST Marks Eve, Finland ",
      description: 'This is a test description',
      image: 'Assets/restaurants/burgerking.png',
      category: "Burgers",
      foodCategories: [
    FoodCategory(
      id: '1',
      name: 'Pizzas',
      index: 0,
    ),
    FoodCategory(
      id: '2',
      name: 'Burgers',
      index: 1,
    ),
    FoodCategory(
      id: '3',
      name: 'Desserts',
      index: 2,
    ),
    FoodCategory(
      id: '4',
      name: 'Asian',
      index: 3,
    ),
  ],
      foods: [
    Food(
      id: 1,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 0,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 2,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 1,
      foodCategory: "Burgers"
    ),
    Food(
      id: 3,
      name: 'Ice Cream',
      description: 'This is a test description',
      image: 'Assets/foods/icecream.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 2,
      foodCategory: "Desserts"
    ),
    Food(
      id: 4,
      name: 'Sushi',
      description: 'This is a test description',
      image: 'Assets/foods/sushi.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 3,
      foodCategory: "Asian"
    ),
    Food(
      id: 5,
      name: 'Cupcake',
      description: 'This is a test description',
      image: 'Assets/foods/cupcake.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 4,
      foodCategory: "Desserts"
    ),
    Food(
      id: 6,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 5,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 8,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 6,
      foodCategory: "Burgers"
    )
  ],
      rating: 4.5,
      maxDiscount: 5,
      index: 1,
      deliveryTime: 30,
    ),
    Restaurant(
      id: 3,
      name: 'McDonalds',
      phone: "5396734333",
      email: "a@a.com",
      address: "  242 ST Marks Eve, Finland ",
      description: 'This is a test description',
      image: 'Assets/restaurants/mcdonalds.png',
      category: "Burgers",
      foodCategories: [
    FoodCategory(
      id: '1',
      name: 'Pizzas',
      index: 0,
    ),
    FoodCategory(
      id: '2',
      name: 'Burgers',
      index: 1,
    ),
    FoodCategory(
      id: '3',
      name: 'Desserts',
      index: 2,
    ),
    FoodCategory(
      id: '4',
      name: 'Asian',
      index: 3,
    ),
  ],
      foods: [
    Food(
      id: 1,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 0,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 2,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 1,
      foodCategory: "Burgers"
    ),
    Food(
      id: 3,
      name: 'Ice Cream',
      description: 'This is a test description',
      image: 'Assets/foods/icecream.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 2,
      foodCategory: "Desserts"
    ),
    Food(
      id: 4,
      name: 'Sushi',
      description: 'This is a test description',
      image: 'Assets/foods/sushi.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 3,
      foodCategory: "Asian"
    ),
    Food(
      id: 5,
      name: 'Cupcake',
      description: 'This is a test description',
      image: 'Assets/foods/cupcake.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 4,
      foodCategory: "Desserts"
    ),
    Food(
      id: 6,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 5,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 8,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 6,
      foodCategory: "Burgers"
    )
  ],
      rating: 4.5,
      maxDiscount: 20,
      index: 2,
      deliveryTime: 30,
    ),
    Restaurant(
      id: 4,
      name: 'Dominos',
      phone: "5396734333",
      email: "a@a.com",
      address: "  242 ST Marks Eve, Finland ",
      description: 'This is a test description',
      image: 'Assets/restaurants/dominos.png', 
      category: "Pizzas",
      foodCategories: [
    FoodCategory(
      id: '1',
      name: 'Pizzas',
      index: 0,
    ),
    FoodCategory(
      id: '2',
      name: 'Burgers',
      index: 1,
    ),
    FoodCategory(
      id: '3',
      name: 'Desserts',
      index: 2,
    ),
    FoodCategory(
      id: '4',
      name: 'Asian',
      index: 3,
    ),
  ],
      foods: [
    Food(
      id: 1,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 0,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 2,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 1,
      foodCategory: "Burgers"
    ),
    Food(
      id: 3,
      name: 'Ice Cream',
      description: 'This is a test description',
      image: 'Assets/foods/icecream.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 2,
      foodCategory: "Desserts"
    ),
    Food(
      id: 4,
      name: 'Sushi',
      description: 'This is a test description',
      image: 'Assets/foods/sushi.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 3,
      foodCategory: "Asian"
    ),
    Food(
      id: 5,
      name: 'Cupcake',
      description: 'This is a test description',
      image: 'Assets/foods/cupcake.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 4,
      foodCategory: "Desserts"
    ),
    Food(
      id: 6,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 5,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 8,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 6,
      foodCategory: "Burgers"
    )
  ],
      rating: 4.5,
      maxDiscount: 10,
      index: 3,
      deliveryTime: 45
    ),
    Restaurant(
      id: 5,
      name: 'Subway',
      phone: "5396734333",
      email: "a@a.com",
      address: "  242 ST Marks Eve, Finland ",
      description: 'This is a test description',
      image: 'Assets/restaurants/subway.png',
      category: "Burgers",
      foodCategories: [
    FoodCategory(
      id: '1',
      name: 'Pizzas',
      index: 0,
    ),
    FoodCategory(
      id: '2',
      name: 'Burgers',
      index: 1,
    ),
    FoodCategory(
      id: '3',
      name: 'Desserts',
      index: 2,
    ),
    FoodCategory(
      id: '4',
      name: 'Asian',
      index: 3,
    ),
  ],
      foods: [
    Food(
      id: 1,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 0,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 2,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 1,
      foodCategory: "Burgers"
    ),
    Food(
      id: 3,
      name: 'Ice Cream',
      description: 'This is a test description',
      image: 'Assets/foods/icecream.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 2,
      foodCategory: "Desserts"
    ),
    Food(
      id: 4,
      name: 'Sushi',
      description: 'This is a test description',
      image: 'Assets/foods/sushi.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 3,
      foodCategory: "Asian"
    ),
    Food(
      id: 5,
      name: 'Cupcake',
      description: 'This is a test description',
      image: 'Assets/foods/cupcake.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 4,
      foodCategory: "Desserts"
    ),
    Food(
      id: 6,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 5,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 8,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 6,
      foodCategory: "Burgers"
    )
  ],
      rating: 4.5,
      maxDiscount: 10,
      index: 4,
      deliveryTime: 30,
    ),
    Restaurant(
      id: 6,
      name: 'Pizza Hut',
      phone: "5396734333",
      email: "a@a.com",
      address: "  242 ST Marks Eve, Finland ",
      description: 'This is a test description',
      image: 'Assets/restaurants/pizza_hut.png',
      category: "Pizzas",
      foodCategories: [
    FoodCategory(
      id: '1',
      name: 'Pizzas',
      index: 0,
    ),
    FoodCategory(
      id: '2',
      name: 'Burgers',
      index: 1,
    ),
    FoodCategory(
      id: '3',
      name: 'Desserts',
      index: 2,
    ),
    FoodCategory(
      id: '4',
      name: 'Asian',
      index: 3,
    ),
  ],
      foods: [
    Food(
      id: 1,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 0,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 2,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 1,
      foodCategory: "Burgers"
    ),
    Food(
      id: 3,
      name: 'Ice Cream',
      description: 'This is a test description',
      image: 'Assets/foods/icecream.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 2,
      foodCategory: "Desserts"
    ),
    Food(
      id: 4,
      name: 'Sushi',
      description: 'This is a test description',
      image: 'Assets/foods/sushi.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 3,
      foodCategory: "Asian"
    ),
    Food(
      id: 5,
      name: 'Cupcake',
      description: 'This is a test description',
      image: 'Assets/foods/cupcake.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 4,
      foodCategory: "Desserts"
    ),
    Food(
      id: 6,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 5,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 8,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 6,
      foodCategory: "Burgers"
    )
  ],
      rating: 4.5,
      maxDiscount: 30,
      index: 5,
      deliveryTime: 30,
    ),
    Restaurant(
      id: 7,
      name: 'Burger King',
      phone: "5396734333",
      email: "a@a.com",
      address: "  242 ST Marks Eve, Finland ",
      description: 'This is a test description',
      image: 'Assets/restaurants/burgerking.png',
      category: "Burgers",
      foodCategories: [
    FoodCategory(
      id: '1',
      name: 'Pizzas',
      index: 0,
    ),
    FoodCategory(
      id: '2',
      name: 'Burgers',
      index: 1,
    ),
    FoodCategory(
      id: '3',
      name: 'Desserts',
      index: 2,
    ),
    FoodCategory(
      id: '4',
      name: 'Asian',
      index: 3,
    ),
  ],
      foods: [
    Food(
      id: 1,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 0,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 2,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 1,
      foodCategory: "Burgers"
    ),
    Food(
      id: 3,
      name: 'Ice Cream',
      description: 'This is a test description',
      image: 'Assets/foods/icecream.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 2,
      foodCategory: "Desserts"
    ),
    Food(
      id: 4,
      name: 'Sushi',
      description: 'This is a test description',
      image: 'Assets/foods/sushi.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 3,
      foodCategory: "Asian"
    ),
    Food(
      id: 5,
      name: 'Cupcake',
      description: 'This is a test description',
      image: 'Assets/foods/cupcake.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 4,
      foodCategory: "Desserts"
    ),
    Food(
      id: 6,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 5,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 8,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 6,
      foodCategory: "Burgers"
    )
  ],
      rating: 4.5,
      maxDiscount: 10,
      index: 6,
      deliveryTime: 30,
    ),
    Restaurant(
      id: 8,
      name: 'McDonalds',
      phone: "5396734333",
      email: "a@a.com",
      address: "  242 ST Marks Eve, Finland ",
      description: 'This is a test description',
      image: 'Assets/restaurants/mcdonalds.png',
      category: "Burgers",
      foodCategories: [
    FoodCategory(
      id: '1',
      name: 'Pizzas',
      index: 0,
    ),
    FoodCategory(
      id: '2',
      name: 'Burgers',
      index: 1,
    ),
    FoodCategory(
      id: '3',
      name: 'Desserts',
      index: 2,
    ),
    FoodCategory(
      id: '4',
      name: 'Asian',
      index: 3,
    ),
  ],
      foods: [
    Food(
      id: 1,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 0,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 2,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 1,
      foodCategory: "Burgers"
    ),
    Food(
      id: 3,
      name: 'Ice Cream',
      description: 'This is a test description',
      image: 'Assets/foods/icecream.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 2,
      foodCategory: "Desserts"
    ),
    Food(
      id: 4,
      name: 'Sushi',
      description: 'This is a test description',
      image: 'Assets/foods/sushi.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 3,
      foodCategory: "Asian"
    ),
    Food(
      id: 5,
      name: 'Cupcake',
      description: 'This is a test description',
      image: 'Assets/foods/cupcake.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 4,
      foodCategory: "Desserts"
    ),
    Food(
      id: 6,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 5,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 8,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 6,
      foodCategory: "Burgers"
    )
  ],
      rating: 4.5,
      maxDiscount: 10,
      index: 7,
      deliveryTime: 30,
    ),
    Restaurant(
      id: 9,
      name: 'Dominos',
      phone: "5396734333",
      email: "a@a.com",
      address: "  242 ST Marks Eve, Finland ",
      description: 'This is a test description',
      image: 'Assets/restaurants/dominos.png',
      category: "Pizzas",
      foodCategories: [
    FoodCategory(
      id: '1',
      name: 'Pizzas',
      index: 0,
    ),
    FoodCategory(
      id: '2',
      name: 'Burgers',
      index: 1,
    ),
    FoodCategory(
      id: '3',
      name: 'Desserts',
      index: 2,
    ),
    FoodCategory(
      id: '4',
      name: 'Asian',
      index: 3,
    ),
  ],
      foods: [
    Food(
      id: 1,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 0,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 2,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 1,
      foodCategory: "Burgers"
    ),
    Food(
      id: 3,
      name: 'Ice Cream',
      description: 'This is a test description',
      image: 'Assets/foods/icecream.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 2,
      foodCategory: "Desserts"
    ),
    Food(
      id: 4,
      name: 'Sushi',
      description: 'This is a test description',
      image: 'Assets/foods/sushi.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 3,
      foodCategory: "Asian"
    ),
    Food(
      id: 5,
      name: 'Cupcake',
      description: 'This is a test description',
      image: 'Assets/foods/cupcake.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 4,
      foodCategory: "Desserts"
    ),
    Food(
      id: 6,
      name: 'Pizza',
      description: 'This is a test description',
      image: 'Assets/foods/pizza.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 5,
      foodCategory: "Pizzas"
    ),
    Food(
      id: 8,
      name: 'Burger',
      description: 'This is a test description',
      image: 'Assets/foods/burger.png',
      price: 10.0,
      discount: 0.0,
      rating: 4.5,
      index: 6,
      foodCategory: "Burgers"
    )
  ],
      rating: 4.5,
      maxDiscount: 10,
      index: 8,
      deliveryTime: 30,
    ),
  ];
   
  String seletedCategoryRestaurant = "Popular Restaurants";
}
