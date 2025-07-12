class Order {
  final String id;
  final List<OrderItem> items;
  final double totalAmount;
  final double deliveryFee;
  final double totalWithDelivery;
  final DateTime orderDate;
  final OrderStatus status;
  final String? notes;

  Order({
    required this.id,
    required this.items,
    required this.totalAmount,
    required this.deliveryFee,
    required this.totalWithDelivery,
    required this.orderDate,
    required this.status,
    this.notes,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      items: (json['items'] as List)
          .map((item) => OrderItem.fromJson(item))
          .toList(),
      totalAmount: json['totalAmount'].toDouble(),
      deliveryFee: json['deliveryFee'].toDouble(),
      totalWithDelivery: json['totalWithDelivery'].toDouble(),
      orderDate: DateTime.parse(json['orderDate']),
      status: OrderStatus.values.firstWhere(
        (status) => status.name == json['status'],
        orElse: () => OrderStatus.pending,
      ),
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'items': items.map((item) => item.toJson()).toList(),
      'totalAmount': totalAmount,
      'deliveryFee': deliveryFee,
      'totalWithDelivery': totalWithDelivery,
      'orderDate': orderDate.toIso8601String(),
      'status': status.name,
      'notes': notes,
    };
  }
}

class OrderItem {
  final String productId;
  final String productName;
  final String productImage;
  final double productPrice;
  final int quantity;
  final double totalPrice;
  final String restaurantId;
  final String restaurantName;
  final List<String> selectedOptions;

  OrderItem({
    required this.productId,
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.quantity,
    required this.totalPrice,
    required this.restaurantId,
    required this.restaurantName,
    required this.selectedOptions,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      productId: json['productId'],
      productName: json['productName'],
      productImage: json['productImage'],
      productPrice: json['productPrice'].toDouble(),
      quantity: json['quantity'],
      totalPrice: json['totalPrice'].toDouble(),
      restaurantId: json['restaurantId'],
      restaurantName: json['restaurantName'],
      selectedOptions: List<String>.from(json['selectedOptions'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'productName': productName,
      'productImage': productImage,
      'productPrice': productPrice,
      'quantity': quantity,
      'totalPrice': totalPrice,
      'restaurantId': restaurantId,
      'restaurantName': restaurantName,
      'selectedOptions': selectedOptions,
    };
  }
}

enum OrderStatus {
  pending,
  confirmed,
  preparing,
  onTheWay,
  delivered,
  cancelled,
}

extension OrderStatusExtension on OrderStatus {
  String get displayName {
    switch (this) {
      case OrderStatus.pending:
        return 'Pendente';
      case OrderStatus.confirmed:
        return 'Confirmado';
      case OrderStatus.preparing:
        return 'Preparando';
      case OrderStatus.onTheWay:
        return 'A caminho';
      case OrderStatus.delivered:
        return 'Entregue';
      case OrderStatus.cancelled:
        return 'Cancelado';
    }
  }

  String get description {
    switch (this) {
      case OrderStatus.pending:
        return 'Aguardando confirmação';
      case OrderStatus.confirmed:
        return 'Pedido confirmado pelo restaurante';
      case OrderStatus.preparing:
        return 'Seu pedido está sendo preparado';
      case OrderStatus.onTheWay:
        return 'Pedido saiu para entrega';
      case OrderStatus.delivered:
        return 'Pedido entregue com sucesso';
      case OrderStatus.cancelled:
        return 'Pedido foi cancelado';
    }
  }
}