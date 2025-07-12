import 'product.dart';

class CartItem {
  final Product product;
  final int quantity;
  final String? specialInstructions;

  CartItem({
    required this.product,
    required this.quantity,
    this.specialInstructions,
  });

  double get totalPrice => product.price * quantity;

  CartItem copyWith({
    Product? product,
    int? quantity,
    String? specialInstructions,
  }) {
    return CartItem(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      specialInstructions: specialInstructions ?? this.specialInstructions,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product': product.toJson(),
      'quantity': quantity,
      'specialInstructions': specialInstructions,
    };
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
      specialInstructions: json['specialInstructions'] as String?,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CartItem && other.product.id == product.id;
  }

  @override
  int get hashCode => product.id.hashCode;
}