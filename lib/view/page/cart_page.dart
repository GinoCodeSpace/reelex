import '../../providers/cart_provider.dart';
import '../../providers/products_provider.dart';
import '../../providers/orders_provider.dart';
import '../../model/cart_item.dart';
import '../../utils/imports/common_libs.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ui = uiConstants;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: ui.cartBackgroundColor(isDark),
      appBar: AppBar(
        title: Text(
          'Carrinho',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ui.cartAppBarTextColor(isDark),
          ),
        ),
        backgroundColor: ui.cartAppBarBackgroundColor(isDark),
        elevation: 0,
        iconTheme: IconThemeData(color: ui.cartAppBarIconColor(isDark)),
        actions: [
          Consumer<CartProvider>(
            builder: (context, cartProvider, child) {
              if (cartProvider.isNotEmpty) {
                return TextButton(
                  onPressed: () {
                    _showClearCartDialog(context, cartProvider);
                  },
                  child: Text(
                    'Limpar',
                    style: TextStyle(
                      color: ui.cartClearButtonColor(isDark),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          if (cartProvider.isEmpty) {
            return _buildEmptyCart(context);
          }

          return Column(
            children: [
              // Lista de itens
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: cartProvider.items.length,
                  itemBuilder: (context, index) {
                    final item = cartProvider.items[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: _buildCartItem(context, item, cartProvider),
                    );
                  },
                ),
              ),

              // Resumo do pedido
              _buildOrderSummary(context, cartProvider),
            ],
          );
        },
      ),
    );
  }

  Widget _buildEmptyCart(BuildContext context) {
    final ui = uiConstants;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            size: UIConstants.cartEmptyIconSize,
            color: ui.cartEmptyIconColor(isDark),
          ),
          const SizedBox(height: 24),
          Text(
            'Seu carrinho está vazio',
            style: TextStyle(
              fontSize: UIConstants.cartEmptyTitleFontSize,
              fontWeight: UIConstants.cartEmptyTitleFontWeight,
              color: ui.cartEmptyTitleColor(isDark),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Adicione alguns itens deliciosos!',
            style: TextStyle(
              fontSize: UIConstants.cartEmptySubtitleFontSize,
              color: ui.cartEmptySubtitleColor(isDark),
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: ui.cartExploreButtonColor(isDark),
              foregroundColor: ui.cartExploreButtonTextColor(isDark),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Text(
              'Explorar Cardápio',
              style: TextStyle(
                fontSize: UIConstants.cartButtonFontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCartItem(
    BuildContext context,
    CartItem item,
    CartProvider cartProvider,
  ) {
    final ui = uiConstants;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Consumer<ProductsProvider>(
      builder: (context, productsProvider, child) {
        final restaurant = productsProvider.getRestaurantById(
          item.product.restaurantId,
        );

        return Card(
          elevation: UIConstants.cartCardElevation,
          color: ui.cartItemCardColor(isDark),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              UIConstants.cartCardBorderRadius,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // Imagem do produto
                Container(
                  width: UIConstants.cartItemImageSize,
                  height: UIConstants.cartItemImageSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      UIConstants.cartItemImageBorderRadius,
                    ),
                    image: DecorationImage(
                      image: NetworkImage(item.product.image),
                      fit: BoxFit.cover,
                      onError: (exception, stackTrace) {},
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        UIConstants.cartItemImageBorderRadius,
                      ),
                      color: ui.cartItemImagePlaceholderColor(isDark),
                    ),
                    child: Icon(
                      Icons.fastfood,
                      color: ui.cartItemImageIconColor(isDark),
                      size: 30,
                    ),
                  ),
                ),

                const SizedBox(width: 16),

                // Informações do produto
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.product.name,
                        style: TextStyle(
                          fontWeight: UIConstants.cartItemNameFontWeight,
                          fontSize: UIConstants.cartItemNameFontSize,
                          color: ui.cartItemNameColor(isDark),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                      if (restaurant != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          restaurant.name,
                          style: TextStyle(
                            color: ui.cartItemRestaurantColor(isDark),
                            fontSize: UIConstants.cartItemRestaurantFontSize,
                          ),
                        ),
                      ],

                      const SizedBox(height: 8),

                      Text(
                        'R\$ ${item.product.price.toStringAsFixed(2)}',
                        style: TextStyle(
                          color: ui.cartItemPriceColor(isDark),
                          fontWeight: UIConstants.cartItemPriceFontWeight,
                          fontSize: UIConstants.cartItemPriceFontSize,
                        ),
                      ),

                      if (item.specialInstructions != null &&
                          item.specialInstructions!.isNotEmpty) ...[
                        const SizedBox(height: 4),
                        Text(
                          'Obs: ${item.specialInstructions}',
                          style: TextStyle(
                            color: ui.cartItemInstructionsColor(isDark),
                            fontSize: UIConstants.cartItemInstructionsFontSize,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),

                const SizedBox(width: 16),

                // Controles de quantidade
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ui.cartQuantityControlColor(isDark),
                        borderRadius: BorderRadius.circular(
                          UIConstants.cartQuantityControlBorderRadius,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () =>
                                cartProvider.decrementQuantity(item.product.id),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Icon(
                                Icons.remove,
                                color: ui.cartQuantityControlTextColor(isDark),
                                size: UIConstants.cartQuantityControlIconSize,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            child: Text(
                              item.quantity.toString(),
                              style: TextStyle(
                                color: ui.cartQuantityControlTextColor(isDark),
                                fontWeight:
                                    UIConstants.cartQuantityTextFontWeight,
                                fontSize: UIConstants.cartQuantityTextFontSize,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                cartProvider.incrementQuantity(item.product.id),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Icon(
                                Icons.add,
                                color: ui.cartQuantityControlTextColor(isDark),
                                size: UIConstants.cartQuantityControlIconSize,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      'R\$ ${item.totalPrice.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontWeight: UIConstants.cartTotalPriceFontWeight,
                        fontSize: UIConstants.cartTotalPriceFontSize,
                        color: ui.cartTotalPriceColor(isDark),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildOrderSummary(BuildContext context, CartProvider cartProvider) {
    final ui = uiConstants;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: ui.cartSummaryBackgroundColor(isDark),
        boxShadow: [
          BoxShadow(
            color: ui.cartSummaryShadowColor(isDark),
            blurRadius: UIConstants.cartSummaryBlurRadius,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // Resumo dos valores
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: TextStyle(
                  fontSize: UIConstants.cartSummaryFontSize,
                  color: ui.cartSummaryTextColor(isDark),
                ),
              ),
              Text(
                'R\$ ${cartProvider.totalAmount.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: UIConstants.cartSummaryFontSize,
                  fontWeight: UIConstants.cartSummaryFontWeight,
                  color: ui.cartSummaryTextColor(isDark),
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Taxa de entrega',
                style: TextStyle(
                  fontSize: UIConstants.cartSummaryFontSize,
                  color: ui.cartSummaryTextColor(isDark),
                ),
              ),
              Text(
                'R\$ ${cartProvider.deliveryFee.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: UIConstants.cartSummaryFontSize,
                  fontWeight: UIConstants.cartSummaryFontWeight,
                  color: ui.cartSummaryTextColor(isDark),
                ),
              ),
            ],
          ),

          const Divider(height: 24),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontSize: UIConstants.cartTotalFontSize,
                  fontWeight: UIConstants.cartTotalFontWeight,
                  color: ui.cartTotalTextColor(isDark),
                ),
              ),
              Text(
                'R\$ ${cartProvider.totalWithDelivery.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: UIConstants.cartTotalFontSize,
                  fontWeight: UIConstants.cartTotalFontWeight,
                  color: ui.cartTotalPriceTextColor(isDark),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Botão de finalizar pedido
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                _showOrderConfirmation(context, cartProvider);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ui.cartFinishButtonColor(isDark),
                foregroundColor: ui.cartFinishButtonTextColor(isDark),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    UIConstants.cartButtonBorderRadius,
                  ),
                ),
                elevation: UIConstants.cartCardElevation,
              ),
              child: Text(
                'Finalizar Pedido - R\$ ${cartProvider.totalWithDelivery.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: UIConstants.cartButtonFontSize,
                  fontWeight: UIConstants.cartButtonFontWeight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showClearCartDialog(BuildContext context, CartProvider cartProvider) {
    final ui = uiConstants;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Limpar Carrinho'),
          content: const Text(
            'Tem certeza que deseja remover todos os itens do carrinho?',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                cartProvider.clearCart();
                Navigator.pop(context); // Fecha o dialog
                context.go(Routes.home); // Navega para a home
              },
              child: Text(
                'Limpar',
                style: TextStyle(color: ui.cartClearButtonColor(isDark)),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showOrderConfirmation(BuildContext context, CartProvider cartProvider) {
    final ui = uiConstants;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    showDialog(
      context: context,
      barrierDismissible: false, // Impede fechar clicando fora
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pedido Confirmado!'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.check_circle,
                color: ui.cartConfirmationIconColor(isDark),
                size: UIConstants.cartConfirmationIconSize,
              ),
              const SizedBox(height: 16),
              Text(
                'Seu pedido foi confirmado com sucesso!\n\nTotal: R\$ ${cartProvider.totalWithDelivery.toStringAsFixed(2)}\n\nVocê pode acompanhar seu pedido na aba "Pedidos".',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () async {
                final ordersProvider = Provider.of<OrdersProvider>(context, listen: false);
                final productsProvider = Provider.of<ProductsProvider>(context, listen: false);
                try {
                  // Salvar o pedido antes de limpar o carrinho
                  final orderId = await ordersProvider.addOrder(cartProvider, productsProvider);
                  cartProvider.clearCart();
                  
                  // Simular progresso do pedido
                  ordersProvider.simulateOrderProgress(orderId);
                  
                  Navigator.pop(context); // Fecha o dialog
                  context.go(Routes.orders); // Navega para a página de pedidos
                } catch (e) {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Erro ao processar pedido: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: const Text('Ver Pedidos'),
            ),
            TextButton(
              onPressed: () async {
                final ordersProvider = Provider.of<OrdersProvider>(context, listen: false);
                final productsProvider = Provider.of<ProductsProvider>(context, listen: false);
                try {
                  // Salvar o pedido antes de limpar o carrinho
                  final orderId = await ordersProvider.addOrder(cartProvider, productsProvider);
                  cartProvider.clearCart();
                  
                  // Simular progresso do pedido
                  ordersProvider.simulateOrderProgress(orderId);
                  
                  Navigator.pop(context); // Fecha o dialog
                  context.go(Routes.home); // Navega para a home
                } catch (e) {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Erro ao processar pedido: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: const Text('Continuar Comprando'),
            ),
          ],
        );
      },
    );
  }
}
