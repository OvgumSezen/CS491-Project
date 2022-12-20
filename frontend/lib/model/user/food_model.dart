//create a food class
class Food {
  final int id;
  final String name;
  final String description;
  final String image;
  final String foodCategory;
  final double price;
  final double discount;
  final double rating;
  final int index;

  Food({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.foodCategory,
    required this.price,
    required this.discount,
    required this.rating,
    required this.index,
  });
}
