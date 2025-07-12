import '../../utils/imports/common_libs.dart';

class RestaurantDetailPage extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantDetailPage({super.key, required this.restaurant});

  @override
  State<RestaurantDetailPage> createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  List<Product> _products = [];
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    try {
      setState(() {
        _isLoading = true;
        _error = null;
      });

      final productsProvider = context.read<ProductsProvider>();
      final products = await productsProvider.getProductsByRestaurant(
        widget.restaurant.id,
      );

      setState(() {
        _products = products;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = 'Erro ao carregar produtos: $e';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final ui = UIConstants();
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Scaffold(
      backgroundColor: ui.restaurantBackgroundColor(isDark),
      body: CustomScrollView(
        slivers: [
          // App Bar com imagem
          SliverAppBar(
            expandedHeight: uiConstants.restaurantAppBarExpandedHeight,
            pinned: true,
            backgroundColor: ui.restaurantAppBarBackgroundColor(isDark),
            iconTheme: IconThemeData(color: ui.restaurantAppBarIconColor(isDark)),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // Imagem do restaurante
                  Image.network(
                    widget.restaurant.image,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: ui.restaurantImagePlaceholderBackgroundColor(isDark),
                        child: Icon(
                          Icons.restaurant,
                          size: uiConstants.restaurantImagePlaceholderIconSize,
                          color: ui.restaurantImagePlaceholderIconColor(isDark),
                        ),
                      );
                    },
                  ),

                  // Overlay escuro
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.7),
                        ],
                      ),
                    ),
                  ),

                  // Status do restaurante
                  Positioned(
                    top: 100,
                    right: 16,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: widget.restaurant.isOpen
                            ? ui.restaurantStatusOpenColor(isDark)
                            : ui.restaurantStatusClosedColor(isDark),
                        borderRadius: BorderRadius.circular(uiConstants.restaurantStatusBorderRadius),
                      ),
                      child: Text(
                        widget.restaurant.isOpen ? 'Aberto' : 'Fechado',
                        style: TextStyle(
                          color: ui.restaurantStatusTextColor(isDark),
                          fontWeight: uiConstants.restaurantStatusFontWeight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Informações do restaurante
          SliverToBoxAdapter(
            child: Container(
              color: ui.restaurantInfoBackgroundColor(isDark),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nome e rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.restaurant.name,
                          style: TextStyle(
                            fontSize: uiConstants.restaurantNameFontSize,
                            fontWeight: uiConstants.restaurantNameFontWeight,
                            color: ui.restaurantNameColor(isDark),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: ui.restaurantRatingBackgroundColor(isDark),
                          borderRadius: BorderRadius.circular(uiConstants.restaurantRatingBorderRadius),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star,
                              color: ui.restaurantRatingIconColor(isDark),
                              size: uiConstants.restaurantRatingIconSize,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              widget.restaurant.rating.toString(),
                              style: TextStyle(
                                color: ui.restaurantRatingTextColor(isDark),
                                fontWeight: uiConstants.restaurantRatingFontWeight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  // Descrição
                  Text(
                    widget.restaurant.description,
                    style: TextStyle(
                      fontSize: uiConstants.restaurantDescriptionFontSize,
                      color: ui.restaurantDescriptionColor(isDark),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Informações de entrega
                  Row(
                    children: [
                      _buildInfoItem(
                        Icons.access_time,
                        'Tempo',
                        widget.restaurant.deliveryTime,
                      ),
                      const SizedBox(width: 24),
                      _buildInfoItem(
                        Icons.delivery_dining,
                        'Entrega',
                        'R\$ ${widget.restaurant.deliveryFee.toStringAsFixed(2)}',
                      ),
                      const SizedBox(width: 24),
                      _buildInfoItem(
                        Icons.shopping_cart,
                        'Mínimo',
                        'R\$ ${widget.restaurant.minimumOrder.toStringAsFixed(2)}',
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Horário de funcionamento
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        size: uiConstants.restaurantScheduleIconSize,
                        color: ui.restaurantScheduleIconColor(isDark),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Horário: ${widget.restaurant.openingHours}',
                        style: TextStyle(
                          color: ui.restaurantScheduleTextColor(isDark),
                          fontSize: uiConstants.restaurantScheduleFontSize,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Tags
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: widget.restaurant.tags.map((tag) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: ui.restaurantTagBackgroundColor(isDark),
                          borderRadius: BorderRadius.circular(uiConstants.restaurantTagBorderRadius),
                          border: Border.all(
                            color: ui.restaurantTagBorderColor(isDark),
                          ),
                        ),
                        child: Text(
                          tag,
                          style: TextStyle(
                            color: ui.restaurantTagTextColor(isDark),
                            fontWeight: uiConstants.restaurantTagFontWeight,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),

          // Título dos produtos
          SliverToBoxAdapter(
            child: Container(
              color: ui.restaurantBackgroundColor(isDark),
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
              child: Text(
                'Cardápio',
                style: TextStyle(
                  fontSize: uiConstants.restaurantMenuTitleFontSize,
                  fontWeight: uiConstants.restaurantMenuTitleFontWeight,
                  color: ui.restaurantMenuTitleColor(isDark),
                ),
              ),
            ),
          ),

          // Lista de produtos
          _buildProductsList(),
        ],
      ),
      floatingActionButton: const CartFloatingButton(),
    );
  }

  Widget _buildInfoItem(IconData icon, String label, String value) {
    final ui = UIConstants();
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Column(
      children: [
        Icon(
          icon,
          color: ui.restaurantInfoIconColor(isDark),
          size: uiConstants.restaurantInfoIconSize,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: uiConstants.restaurantInfoLabelFontSize,
            color: ui.restaurantInfoLabelColor(isDark),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: TextStyle(
            fontSize: uiConstants.restaurantInfoValueFontSize,
            fontWeight: uiConstants.restaurantInfoValueFontWeight,
            color: ui.restaurantInfoValueColor(isDark),
          ),
        ),
      ],
    );
  }

  Widget _buildProductsList() {
    final ui = UIConstants();
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    if (_isLoading) {
      return SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: CircularProgressIndicator(
              color: ui.restaurantLoadingIndicatorColor(isDark),
            ),
          ),
        ),
      );
    }

    if (_error != null) {
      return SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Icon(
                  Icons.error_outline,
                  size: uiConstants.restaurantErrorIconSize,
                  color: ui.restaurantErrorIconColor(isDark),
                ),
                const SizedBox(height: 16),
                Text(
                  'Erro ao carregar produtos',
                  style: TextStyle(
                    fontSize: uiConstants.restaurantErrorTextFontSize,
                    color: ui.restaurantErrorTextColor(isDark),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _loadProducts,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ui.restaurantRetryButtonBackgroundColor(isDark),
                    foregroundColor: ui.restaurantRetryButtonTextColor(isDark),
                  ),
                  child: const Text('Tentar novamente'),
                ),
              ],
            ),
          ),
        ),
      );
    }

    if (_products.isEmpty) {
      return SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Icon(
                  Icons.fastfood,
                  size: uiConstants.restaurantEmptyIconSize,
                  color: ui.restaurantEmptyIconColor(isDark),
                ),
                const SizedBox(height: 16),
                Text(
                  'Nenhum produto disponível',
                  style: TextStyle(
                    fontSize: uiConstants.restaurantEmptyTextFontSize,
                    color: ui.restaurantEmptyTextColor(isDark),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: uiConstants.restaurantProductGridCrossAxisCount,
          childAspectRatio: uiConstants.restaurantProductGridAspectRatio,
          crossAxisSpacing: uiConstants.restaurantProductGridSpacing,
          mainAxisSpacing: uiConstants.restaurantProductGridSpacing,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          return ProductCard(product: _products[index]);
        }, childCount: _products.length),
      ),
    );
  }
}
