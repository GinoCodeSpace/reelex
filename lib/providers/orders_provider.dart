import '../utils/imports/common_libs.dart';

class OrdersProvider with ChangeNotifier {
  final List<Order> _orders = [];
  bool _isLoading = false;
  String? _error;

  List<Order> get orders => List.unmodifiable(_orders);
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get hasOrders => _orders.isNotEmpty;

  // Adicionar um novo pedido
  Future<String> addOrder(CartProvider cartProvider, ProductsProvider productsProvider, {String? notes}) async {
    try {
      _setLoading(true);
      _error = null;

      // Gerar ID único para o pedido
      final orderId = 'ORDER_${DateTime.now().millisecondsSinceEpoch}';

      // Converter itens do carrinho para itens do pedido
      final orderItems = cartProvider.items.map((cartItem) {
        final restaurant = productsProvider.getRestaurantById(cartItem.product.restaurantId);
        return OrderItem(
          productId: cartItem.product.id,
          productName: cartItem.product.name,
          productImage: cartItem.product.image,
          productPrice: cartItem.product.price,
          quantity: cartItem.quantity,
          totalPrice: cartItem.totalPrice,
          restaurantId: cartItem.product.restaurantId,
          restaurantName: restaurant?.name ?? 'Restaurante',
          selectedOptions: cartItem.specialInstructions != null ? [cartItem.specialInstructions!] : [],
        );
      }).toList();

      // Criar o pedido
      final order = Order(
        id: orderId,
        items: orderItems,
        totalAmount: cartProvider.totalAmount,
        deliveryFee: cartProvider.deliveryFee,
        totalWithDelivery: cartProvider.totalWithDelivery,
        orderDate: DateTime.now(),
        status: OrderStatus.confirmed,
        notes: notes,
      );

      // Adicionar à lista (no início para mostrar os mais recentes primeiro)
      _orders.insert(0, order);
      
      _setLoading(false);
      notifyListeners();
      
      return orderId;
    } catch (e) {
      _error = 'Erro ao criar pedido: $e';
      _setLoading(false);
      notifyListeners();
      rethrow;
    }
  }

  // Atualizar status do pedido
  void updateOrderStatus(String orderId, OrderStatus newStatus) {
    final orderIndex = _orders.indexWhere((order) => order.id == orderId);
    if (orderIndex != -1) {
      final order = _orders[orderIndex];
      final updatedOrder = Order(
        id: order.id,
        items: order.items,
        totalAmount: order.totalAmount,
        deliveryFee: order.deliveryFee,
        totalWithDelivery: order.totalWithDelivery,
        orderDate: order.orderDate,
        status: newStatus,
        notes: order.notes,
      );
      
      _orders[orderIndex] = updatedOrder;
      notifyListeners();
    }
  }

  // Cancelar pedido
  void cancelOrder(String orderId) {
    updateOrderStatus(orderId, OrderStatus.cancelled);
  }

  // Buscar pedido por ID
  Order? getOrderById(String orderId) {
    try {
      return _orders.firstWhere((order) => order.id == orderId);
    } catch (e) {
      return null;
    }
  }

  // Filtrar pedidos por status
  List<Order> getOrdersByStatus(OrderStatus status) {
    return _orders.where((order) => order.status == status).toList();
  }

  // Obter pedidos ativos (não entregues nem cancelados)
  List<Order> get activeOrders {
    return _orders.where((order) => 
      order.status != OrderStatus.delivered && 
      order.status != OrderStatus.cancelled
    ).toList();
  }

  // Obter histórico de pedidos (entregues e cancelados)
  List<Order> get orderHistory {
    return _orders.where((order) => 
      order.status == OrderStatus.delivered || 
      order.status == OrderStatus.cancelled
    ).toList();
  }

  // Limpar erro
  void clearError() {
    _error = null;
    notifyListeners();
  }

  // Método auxiliar para definir loading
  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  // Simular progresso do pedido (para demonstração)
  void simulateOrderProgress(String orderId) {
    final order = getOrderById(orderId);
    if (order == null) return;

    // Simular progressão do status do pedido
    Future.delayed(const Duration(seconds: 5), () {
      if (order.status == OrderStatus.confirmed) {
        updateOrderStatus(orderId, OrderStatus.preparing);
      }
    });

    Future.delayed(const Duration(seconds: 15), () {
      if (order.status == OrderStatus.preparing) {
        updateOrderStatus(orderId, OrderStatus.onTheWay);
      }
    });

    Future.delayed(const Duration(seconds: 30), () {
      if (order.status == OrderStatus.onTheWay) {
        updateOrderStatus(orderId, OrderStatus.delivered);
      }
    });
  }
}