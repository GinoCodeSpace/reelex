class Restaurant {
  final String id;
  final String name;
  final String description;
  final String image;
  final double rating;
  final String deliveryTime;
  final double deliveryFee;
  final String category;
  final String address;
  final String phone;
  final bool isOpen;
  final String openingHours;
  final double minimumOrder;
  final List<String> tags;

  Restaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.rating,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.category,
    required this.address,
    required this.phone,
    required this.isOpen,
    required this.openingHours,
    required this.minimumOrder,
    required this.tags,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      rating: (json['rating'] as num).toDouble(),
      deliveryTime: json['deliveryTime'] as String,
      deliveryFee: (json['deliveryFee'] as num).toDouble(),
      category: json['category'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      isOpen: json['isOpen'] as bool,
      openingHours: json['openingHours'] as String,
      minimumOrder: (json['minimumOrder'] as num).toDouble(),
      tags: List<String>.from(json['tags'] as List),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'rating': rating,
      'deliveryTime': deliveryTime,
      'deliveryFee': deliveryFee,
      'category': category,
      'address': address,
      'phone': phone,
      'isOpen': isOpen,
      'openingHours': openingHours,
      'minimumOrder': minimumOrder,
      'tags': tags,
    };
  }

  Restaurant copyWith({
    String? id,
    String? name,
    String? description,
    String? image,
    double? rating,
    String? deliveryTime,
    double? deliveryFee,
    String? category,
    String? address,
    String? phone,
    bool? isOpen,
    String? openingHours,
    double? minimumOrder,
    List<String>? tags,
  }) {
    return Restaurant(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      rating: rating ?? this.rating,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      deliveryFee: deliveryFee ?? this.deliveryFee,
      category: category ?? this.category,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      isOpen: isOpen ?? this.isOpen,
      openingHours: openingHours ?? this.openingHours,
      minimumOrder: minimumOrder ?? this.minimumOrder,
      tags: tags ?? this.tags,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Restaurant && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}