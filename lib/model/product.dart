class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String image;
  final String category;
  final String restaurantId;
  final int preparationTime;
  final double rating;
  final List<String> ingredients;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
    required this.restaurantId,
    required this.preparationTime,
    required this.rating,
    required this.ingredients,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String,
      category: json['category'] as String,
      restaurantId: json['restaurantId'] as String,
      preparationTime: json['preparationTime'] as int,
      rating: (json['rating'] as num).toDouble(),
      ingredients: List<String>.from(json['ingredients'] as List),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'image': image,
      'category': category,
      'restaurantId': restaurantId,
      'preparationTime': preparationTime,
      'rating': rating,
      'ingredients': ingredients,
    };
  }

  Product copyWith({
    String? id,
    String? name,
    String? description,
    double? price,
    String? image,
    String? category,
    String? restaurantId,
    int? preparationTime,
    double? rating,
    List<String>? ingredients,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      image: image ?? this.image,
      category: category ?? this.category,
      restaurantId: restaurantId ?? this.restaurantId,
      preparationTime: preparationTime ?? this.preparationTime,
      rating: rating ?? this.rating,
      ingredients: ingredients ?? this.ingredients,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Product && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}