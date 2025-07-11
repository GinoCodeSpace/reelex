import '../utils/imports/common_libs.dart';

class NavigationProvider extends ChangeNotifier {
  bool _showBackButton = false;
  String _currentRoute = '/';
  List<String> _navigationStack = ['/'];

  bool get showBackButton => _showBackButton;
  String get currentRoute => _currentRoute;
  List<String> get navigationStack => List.unmodifiable(_navigationStack);

  /// Atualiza o estado de navegação quando uma nova rota é acessada
  void updateNavigation(String route, {bool canPop = false}) {
    _currentRoute = route;
    
    // Atualiza o stack de navegação
    if (!_navigationStack.contains(route)) {
      _navigationStack.add(route);
    } else {
      // Remove todas as rotas após a rota atual para manter consistência
      final index = _navigationStack.indexOf(route);
      _navigationStack = _navigationStack.sublist(0, index + 1);
    }
    
    // Determina se deve mostrar o botão de voltar
    _showBackButton = _shouldShowBackButton(route, canPop);
    
    notifyListeners();
  }

  /// Determina se o botão de voltar deve ser exibido
  bool _shouldShowBackButton(String route, bool canPop) {
    // Rotas que nunca devem mostrar o botão de voltar
    final noBackButtonRoutes = [
      Routes.home,
      Routes.login,
    ];
    
    // Se a rota está na lista de rotas sem botão de voltar
    if (noBackButtonRoutes.contains(route)) {
      return false;
    }
    
    // Se há mais de uma rota no stack ou o GoRouter indica que pode voltar
    return _navigationStack.length > 1 || canPop;
  }

  /// Navega para trás removendo a rota atual do stack
  void navigateBack() {
    if (_navigationStack.length > 1) {
      _navigationStack.removeLast();
      _currentRoute = _navigationStack.last;
      _showBackButton = _shouldShowBackButton(_currentRoute, _navigationStack.length > 1);
      notifyListeners();
    }
  }

  /// Limpa o stack de navegação (útil para logout)
  void clearNavigationStack() {
    _navigationStack = ['/'];
    _currentRoute = '/';
    _showBackButton = false;
    notifyListeners();
  }

  /// Reseta para uma rota específica
  void resetToRoute(String route) {
    _navigationStack = [route];
    _currentRoute = route;
    _showBackButton = false;
    notifyListeners();
  }
}