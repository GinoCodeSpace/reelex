import '../../utils/imports/common_libs.dart';


class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final uiConstants = UIConstants();
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Scaffold(
      backgroundColor: uiConstants.ordersBackgroundColor(isDark),
      appBar: AppBar(
        title: Text(
          'Meus Pedidos',
          style: TextStyle(
            fontSize: uiConstants.ordersAppBarTitleFontSize,
            fontWeight: uiConstants.ordersAppBarTitleFontWeight,
            color: uiConstants.ordersAppBarForegroundColor(isDark),
          ),
        ),
        backgroundColor: uiConstants.ordersAppBarBackgroundColor(isDark),
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          labelColor: uiConstants.ordersTabSelectedColor(isDark),
          unselectedLabelColor: uiConstants.ordersTabUnselectedColor(isDark),
          indicatorColor: uiConstants.ordersTabIndicatorColor(isDark),
          tabs: const [
            Tab(text: 'Ativos'),
            Tab(text: 'Histórico'),
          ],
        ),
      ),
      body: Consumer<OrdersProvider>(
        builder: (context, ordersProvider, child) {
          if (ordersProvider.isLoading) {
            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(uiConstants.ordersLoadingIndicatorColor(isDark)),
              ),
            );
          }

          if (ordersProvider.error != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: uiConstants.ordersErrorIconSize,
                    color: uiConstants.ordersErrorIconColor(isDark),
                  ),
                  SizedBox(height: uiConstants.spacingMedium),
                  Text(
                    'Erro ao carregar pedidos',
                    style: TextStyle(
                      fontSize: uiConstants.ordersErrorTitleFontSize,
                      color: uiConstants.ordersErrorTextColor(isDark),
                      fontWeight: uiConstants.ordersErrorTitleFontWeight,
                    ),
                  ),
                  SizedBox(height: uiConstants.spacingSmall),
                  Text(
                    ordersProvider.error!,
                    style: TextStyle(
                      fontSize: uiConstants.ordersErrorSubtitleFontSize,
                      color: uiConstants.ordersErrorTextColor(isDark),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: uiConstants.spacingLarge),
                  ElevatedButton(
                    onPressed: () => ordersProvider.clearError(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: uiConstants.ordersRetryButtonBackgroundColor(isDark),
                      foregroundColor: uiConstants.ordersRetryButtonForegroundColor(isDark),
                    ),
                    child: Text(
                      'Tentar novamente',
                      style: TextStyle(
                        fontSize: uiConstants.ordersRetryButtonFontSize,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }

          return TabBarView(
            controller: _tabController,
            children: [
              _buildActiveOrdersTab(ordersProvider),
              _buildOrderHistoryTab(ordersProvider),
            ],
          );
        },
      ),
    );
  }

  Widget _buildActiveOrdersTab(OrdersProvider ordersProvider) {
    final uiConstants = UIConstants();
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final activeOrders = ordersProvider.activeOrders;

    if (activeOrders.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.receipt_long,
              size: uiConstants.ordersEmptyIconSize,
              color: uiConstants.ordersEmptyIconColor(isDark),
            ),
            SizedBox(height: uiConstants.spacingMedium),
            Text(
              'Nenhum pedido ativo',
              style: TextStyle(
                fontSize: uiConstants.ordersEmptyTitleFontSize,
                color: uiConstants.ordersEmptyTextColor(isDark),
                fontWeight: uiConstants.ordersEmptyTitleFontWeight,
              ),
            ),
            SizedBox(height: uiConstants.spacingSmall),
            Text(
              'Seus pedidos em andamento aparecerão aqui',
              style: TextStyle(
                fontSize: uiConstants.ordersEmptySubtitleFontSize,
                color: uiConstants.ordersEmptyTextColor(isDark),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(uiConstants.ordersCardPadding),
      itemCount: activeOrders.length,
      itemBuilder: (context, index) {
        final order = activeOrders[index];
        return Padding(
          padding: EdgeInsets.only(bottom: uiConstants.ordersCardSpacing),
          child: _buildOrderCard(order, isActive: true),
        );
      },
    );
  }

  Widget _buildOrderHistoryTab(OrdersProvider ordersProvider) {
    final uiConstants = UIConstants();
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final orderHistory = ordersProvider.orderHistory;

    if (orderHistory.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.history,
              size: uiConstants.ordersEmptyIconSize,
              color: uiConstants.ordersEmptyIconColor(isDark),
            ),
            SizedBox(height: uiConstants.spacingMedium),
            Text(
              'Nenhum pedido no histórico',
              style: TextStyle(
                fontSize: uiConstants.ordersEmptyTitleFontSize,
                color: uiConstants.ordersEmptyTextColor(isDark),
                fontWeight: uiConstants.ordersEmptyTitleFontWeight,
              ),
            ),
            SizedBox(height: uiConstants.spacingSmall),
            Text(
              'Seus pedidos finalizados aparecerão aqui',
              style: TextStyle(
                fontSize: uiConstants.ordersEmptySubtitleFontSize,
                color: uiConstants.ordersEmptyTextColor(isDark),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(uiConstants.ordersCardPadding),
      itemCount: orderHistory.length,
      itemBuilder: (context, index) {
        final order = orderHistory[index];
        return Padding(
          padding: EdgeInsets.only(bottom: uiConstants.ordersCardSpacing),
          child: _buildOrderCard(order, isActive: false),
        );
      },
    );
  }

  Widget _buildOrderCard(Order order, {required bool isActive}) {
    final uiConstants = UIConstants();
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Card(
      elevation: uiConstants.ordersCardElevation,
      color: uiConstants.ordersCardBackgroundColor(isDark),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(uiConstants.ordersCardBorderRadius),
      ),
      child: Padding(
        padding: EdgeInsets.all(uiConstants.ordersCardPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cabeçalho do pedido
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pedido #${order.id.substring(order.id.length - 6)}',
                  style: TextStyle(
                    fontWeight: uiConstants.ordersOrderIdFontWeight,
                    fontSize: uiConstants.ordersOrderIdFontSize,
                    color: uiConstants.ordersOrderIdColor(isDark),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: uiConstants.ordersStatusPaddingHorizontal,
                    vertical: uiConstants.ordersStatusPaddingVertical,
                  ),
                  decoration: BoxDecoration(
                    color: _getStatusColor(order.status, isDark).withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(uiConstants.ordersStatusBorderRadius),
                  ),
                  child: Text(
                    order.status.displayName,
                    style: TextStyle(
                      color: _getStatusColor(order.status, isDark),
                      fontWeight: uiConstants.ordersStatusFontWeight,
                      fontSize: uiConstants.ordersStatusFontSize,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            
            // Data e hora
            Text(
              _formatDateTime(order.orderDate),
              style: TextStyle(
                color: uiConstants.ordersDateTimeColor(isDark),
                fontSize: uiConstants.ordersDateTimeFontSize,
              ),
            ),
            SizedBox(height: uiConstants.spacingMedium),
            
            // Itens do pedido (resumo)
            Text(
              '${order.items.length} ${order.items.length == 1 ? 'item' : 'itens'}',
              style: TextStyle(
                fontWeight: uiConstants.ordersItemCountFontWeight,
                fontSize: uiConstants.ordersItemCountFontSize,
                color: uiConstants.ordersItemCountColor(isDark),
              ),
            ),
            SizedBox(height: uiConstants.spacingXSmall),
            
            // Primeiro item como exemplo
            if (order.items.isNotEmpty)
              Text(
                order.items.first.productName +
                    (order.items.length > 1 ? ' e mais ${order.items.length - 1}' : ''),
                style: TextStyle(
                  color: uiConstants.ordersItemNameColor(isDark),
                  fontSize: uiConstants.ordersItemNameFontSize,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            SizedBox(height: uiConstants.spacingMedium),
            
            // Total e ações
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: R\$ ${order.totalWithDelivery.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: uiConstants.ordersTotalFontWeight,
                    fontSize: uiConstants.ordersTotalFontSize,
                    color: uiConstants.ordersTotalColor(isDark),
                  ),
                ),
                if (isActive && order.status == OrderStatus.confirmed)
                  TextButton(
                    onPressed: () {
                      final ordersProvider = Provider.of<OrdersProvider>(context, listen: false);
                      ordersProvider.cancelOrder(order.id);
                    },
                    child: Text(
                      'Cancelar',
                      style: TextStyle(
                        color: uiConstants.ordersCancelButtonColor(isDark),
                        fontSize: uiConstants.ordersCancelButtonFontSize,
                      ),
                    ),
                  ),
              ],
            ),
            
            // Descrição do status
            if (isActive)
              Container(
                margin: EdgeInsets.only(top: uiConstants.spacingSmall),
                padding: EdgeInsets.all(uiConstants.ordersStatusDescriptionPadding),
                decoration: BoxDecoration(
                  color: uiConstants.ordersStatusDescriptionBackgroundColor(isDark),
                  borderRadius: BorderRadius.circular(uiConstants.ordersStatusDescriptionBorderRadius),
                ),
                child: Row(
                  children: [
                    Icon(
                      _getStatusIcon(order.status),
                      size: uiConstants.ordersStatusIconSize,
                      color: _getStatusColor(order.status, isDark),
                    ),
                    SizedBox(width: uiConstants.spacingSmall),
                    Expanded(
                      child: Text(
                        order.status.description,
                        style: TextStyle(
                          fontSize: uiConstants.ordersStatusDescriptionFontSize,
                          color: uiConstants.ordersStatusDescriptionTextColor(isDark),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(OrderStatus status, bool isDark) {
    final uiConstants = UIConstants();
    switch (status) {
      case OrderStatus.pending:
        return uiConstants.orderStatusPendingColor(isDark);
      case OrderStatus.confirmed:
        return uiConstants.orderStatusConfirmedColor(isDark);
      case OrderStatus.preparing:
        return uiConstants.orderStatusPreparingColor(isDark);
      case OrderStatus.onTheWay:
        return uiConstants.orderStatusOnTheWayColor(isDark);
      case OrderStatus.delivered:
        return uiConstants.orderStatusDeliveredColor(isDark);
      case OrderStatus.cancelled:
        return uiConstants.orderStatusCancelledColor(isDark);
    }
  }

  IconData _getStatusIcon(OrderStatus status) {
    switch (status) {
      case OrderStatus.pending:
        return Icons.schedule;
      case OrderStatus.confirmed:
        return Icons.check_circle_outline;
      case OrderStatus.preparing:
        return Icons.restaurant;
      case OrderStatus.onTheWay:
        return Icons.delivery_dining;
      case OrderStatus.delivered:
        return Icons.check_circle;
      case OrderStatus.cancelled:
        return Icons.cancel;
    }
  }

  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays == 0) {
      return 'Hoje às ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    } else if (difference.inDays == 1) {
      return 'Ontem às ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    } else {
      return '${dateTime.day.toString().padLeft(2, '0')}/${dateTime.month.toString().padLeft(2, '0')}/${dateTime.year} às ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    }
  }
}
