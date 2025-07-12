import 'dart:convert';
import 'dart:developer' as developer;
import '../utils/imports/common_libs.dart';

class DataService {
  static DataService? _instance;
  static DataService get instance => _instance ??= DataService._();
  DataService._();

  List<Product>? _products;
  List<Restaurant>? _restaurants;

  Future<List<Product>> getProducts() async {
    if (_products != null) return _products!;
    
    try {
      final String response = await rootBundle.loadString('assets/data/products_data.json');
      final List<dynamic> data = json.decode(response);
      _products = data.map((json) => Product.fromJson(json)).toList();
      return _products!;
    } catch (e) {
      developer.log('Erro ao carregar produtos: $e', name: 'DataService');
      return [];
    }
  }

  Future<List<Restaurant>> getRestaurants() async {
    if (_restaurants != null) return _restaurants!;
    
    try {
      final String response = await rootBundle.loadString('assets/data/restaurants_data.json');
      final List<dynamic> data = json.decode(response);
      _restaurants = data.map((json) => Restaurant.fromJson(json)).toList();
      return _restaurants!;
    } catch (e) {
      developer.log('Erro ao carregar restaurantes: $e', name: 'DataService');
      return [];
    }
  }

  Future<List<Product>> getProductsByRestaurant(String restaurantId) async {
    final products = await getProducts();
    return products.where((product) => product.restaurantId == restaurantId).toList();
  }

  Future<List<Product>> getProductsByCategory(String category) async {
    final products = await getProducts();
    return products.where((product) => product.category.toLowerCase() == category.toLowerCase()).toList();
  }

  Future<Restaurant?> getRestaurantById(String id) async {
    final restaurants = await getRestaurants();
    try {
      return restaurants.firstWhere((restaurant) => restaurant.id == id);
    } catch (e) {
      return null;
    }
  }

  Future<Product?> getProductById(String id) async {
    final products = await getProducts();
    try {
      return products.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  Future<List<String>> getCategories() async {
    final products = await getProducts();
    final categories = products.map((product) => product.category).toSet().toList();
    categories.sort();
    return categories;
  }

  Future<List<Product>> searchProducts(String query) async {
    final products = await getProducts();
    final lowercaseQuery = query.toLowerCase();
    return products.where((product) {
      return product.name.toLowerCase().contains(lowercaseQuery) ||
             product.description.toLowerCase().contains(lowercaseQuery) ||
             product.category.toLowerCase().contains(lowercaseQuery);
    }).toList();
  }

  Future<List<Restaurant>> searchRestaurants(String query) async {
    final restaurants = await getRestaurants();
    final lowercaseQuery = query.toLowerCase();
    return restaurants.where((restaurant) {
      return restaurant.name.toLowerCase().contains(lowercaseQuery) ||
             restaurant.description.toLowerCase().contains(lowercaseQuery) ||
             restaurant.category.toLowerCase().contains(lowercaseQuery) ||
             restaurant.tags.any((tag) => tag.toLowerCase().contains(lowercaseQuery));
    }).toList();
  }

  // Método para limpar o cache e forçar recarregamento
  void clearCache() {
    _products = null;
    _restaurants = null;
  }
}