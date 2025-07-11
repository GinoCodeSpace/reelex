import '../../utils/imports/common_libs.dart';
import '../../providers/products_provider.dart';
import '../../providers/cart_provider.dart';
import '../component/search_bar_widget.dart';
import '../component/category_chip.dart';
import '../component/restaurant_card.dart';
import '../component/product_card.dart';
import '../component/cart_floating_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    
    // Carregar dados quando a página for inicializada
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProductsProvider>().loadAllData();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer3<AuthProvider, ProductsProvider, CartProvider>(
      builder: (context, authProvider, productsProvider, cartProvider, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Reelex Delivery'),
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            elevation: 0,
            actions: [
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  // Mostrar informações do usuário
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Perfil'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Usuário: ${authProvider.userEmail ?? "Não logado"}'),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              authProvider.logout(context);
                              context.go(Routes.login);
                            },
                            child: const Text('Sair'),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Fechar'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              tabs: const [
                Tab(text: 'Restaurantes'),
                Tab(text: 'Pratos'),
              ],
            ),
          ),
          body: Column(
            children: [
              // Barra de busca
              Container(
                color: Colors.orange,
                padding: const EdgeInsets.all(16),
                child: SearchBarWidget(
                  controller: _searchController,
                  onChanged: (query) {
                    productsProvider.setSearchQuery(query);
                  },
                  hintText: 'Buscar restaurantes e pratos...',
                ),
              ),
              
              // Conteúdo principal
              Expanded(
                child: productsProvider.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : productsProvider.error != null
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.error_outline,
                                  size: 64,
                                  color: Colors.red,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Erro ao carregar dados',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  productsProvider.error!,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                const SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: () {
                                    productsProvider.refresh();
                                  },
                                  child: const Text('Tentar novamente'),
                                ),
                              ],
                            ),
                          )
                        : TabBarView(
                            controller: _tabController,
                            children: [
                              _buildRestaurantsTab(productsProvider),
                              _buildProductsTab(productsProvider),
                            ],
                          ),
              ),
            ],
          ),
          floatingActionButton: const CartFloatingButton(),
        );
      },
    );
  }

  Widget _buildRestaurantsTab(ProductsProvider productsProvider) {
    final restaurants = productsProvider.filteredRestaurants;
    
    if (restaurants.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.restaurant,
              size: 64,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              'Nenhum restaurante encontrado',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () => productsProvider.refresh(),
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: RestaurantCard(restaurant: restaurants[index]),
          );
        },
      ),
    );
  }

  Widget _buildProductsTab(ProductsProvider productsProvider) {
    return Column(
      children: [
        // Filtros de categoria
        if (productsProvider.categories.isNotEmpty)
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: productsProvider.categories.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CategoryChip(
                      label: 'Todos',
                      isSelected: productsProvider.selectedCategory.isEmpty,
                      onTap: () {
                        productsProvider.setSelectedCategory('');
                      },
                    ),
                  );
                }
                
                final category = productsProvider.categories[index - 1];
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: CategoryChip(
                    label: category,
                    isSelected: productsProvider.selectedCategory == category,
                    onTap: () {
                      productsProvider.setSelectedCategory(category);
                    },
                  ),
                );
              },
            ),
          ),
        
        // Lista de produtos
        Expanded(
          child: _buildProductsGrid(productsProvider),
        ),
      ],
    );
  }

  Widget _buildProductsGrid(ProductsProvider productsProvider) {
    final products = productsProvider.filteredProducts;
    
    if (products.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.fastfood,
              size: 64,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              'Nenhum produto encontrado',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () => productsProvider.refresh(),
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}
