import '../utils/imports/common_libs.dart';

class ProductsProvider with ChangeNotifier {
  final DataService _dataService = DataService.instance;
  
  List<Product> _products = [];
  List<Restaurant> _restaurants = [];
  List<String> _categories = [];
  bool _isLoading = false;
  String? _error;
  String _searchQuery = '';
  String _selectedCategory = '';

  // Getters
  List<Product> get products => _products;
  List<Restaurant> get restaurants => _restaurants;
  List<String> get categories => _categories;
  bool get isLoading => _isLoading;
  String? get error => _error;
  String get searchQuery => _searchQuery;
  String get selectedCategory => _selectedCategory;

  List<Product> get filteredProducts {
    List<Product> filtered = _products;

    // Filtrar por categoria
    if (_selectedCategory.isNotEmpty) {
      filtered = filtered.where((product) => 
        product.category.toLowerCase() == _selectedCategory.toLowerCase()
      ).toList();
    }

    // Filtrar por busca
    if (_searchQuery.isNotEmpty) {
      final query = _searchQuery.toLowerCase();
      filtered = filtered.where((product) => 
        product.name.toLowerCase().contains(query) ||
        product.description.toLowerCase().contains(query) ||
        product.category.toLowerCase().contains(query)
      ).toList();
    }

    return filtered;
  }

  List<Restaurant> get filteredRestaurants {
    if (_searchQuery.isEmpty) return _restaurants;
    
    final query = _searchQuery.toLowerCase();
    return _restaurants.where((restaurant) => 
      restaurant.name.toLowerCase().contains(query) ||
      restaurant.description.toLowerCase().contains(query) ||
      restaurant.category.toLowerCase().contains(query) ||
      restaurant.tags.any((tag) => tag.toLowerCase().contains(query))
    ).toList();
  }

  // Métodos para carregar dados
  Future<void> loadProducts() async {
    _setLoading(true);
    try {
      _products = await _dataService.getProducts();
      _error = null;
    } catch (e) {
      _error = 'Erro ao carregar produtos: $e';
      _products = [];
    }
    _setLoading(false);
  }

  Future<void> loadRestaurants() async {
    _setLoading(true);
    try {
      _restaurants = await _dataService.getRestaurants();
      _error = null;
    } catch (e) {
      _error = 'Erro ao carregar restaurantes: $e';
      _restaurants = [];
    }
    _setLoading(false);
  }

  Future<void> loadCategories() async {
    try {
      _categories = await _dataService.getCategories();
      _error = null;
    } catch (e) {
      _error = 'Erro ao carregar categorias: $e';
      _categories = [];
    }
    notifyListeners();
  }

  Future<void> loadAllData() async {
    _setLoading(true);
    _error = null;
    try {
      // Carregar dados sequencialmente para evitar conflitos
      _products = await _dataService.getProducts();
      _restaurants = await _dataService.getRestaurants();
      _categories = await _dataService.getCategories();
    } catch (e) {
      _error = 'Erro ao carregar dados: $e';
      _products = [];
      _restaurants = [];
      _categories = [];
    }
    _setLoading(false);
  }

  // Métodos de busca e filtro
  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  void setSelectedCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void clearFilters() {
    _searchQuery = '';
    _selectedCategory = '';
    notifyListeners();
  }

  // Métodos específicos
  Future<List<Product>> getProductsByRestaurant(String restaurantId) async {
    try {
      return await _dataService.getProductsByRestaurant(restaurantId);
    } catch (e) {
      _error = 'Erro ao carregar produtos do restaurante: $e';
      return [];
    }
  }

  Restaurant? getRestaurantById(String id) {
    try {
      return _restaurants.firstWhere((restaurant) => restaurant.id == id);
    } catch (e) {
      return null;
    }
  }

  Product? getProductById(String id) {
    try {
      return _products.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  List<Restaurant> get openRestaurants {
    return _restaurants.where((restaurant) => restaurant.isOpen).toList();
  }

  List<Product> getProductsByCategory(String category) {
    return _products.where((product) => 
      product.category.toLowerCase() == category.toLowerCase()
    ).toList();
  }

  // Métodos auxiliares
  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }

  Future<void> refresh() async {
    _error = null;
    _products.clear();
    _restaurants.clear();
    _categories.clear();
    
    // Limpar cache do DataService para forçar recarregamento
    _dataService.clearCache();
    
    notifyListeners(); // Notificar que as listas foram limpas
    await loadAllData();
  }
}