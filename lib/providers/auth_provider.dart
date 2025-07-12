import '../utils/imports/common_libs.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;
  String? _userEmail;
  bool _isLoading = false;

  bool get isAuthenticated => _isAuthenticated;
  String? get userEmail => _userEmail;
  bool get isLoading => _isLoading;

  /// Simula o processo de login
  Future<bool> login(String email, String password) async {
    _isLoading = true;
    notifyListeners();

    try {
      // Simula uma chamada de API
      await Future.delayed(const Duration(seconds: 2));

      // Validação simples para demonstração
      if (email.isNotEmpty && password.length >= 6) {
        _isAuthenticated = true;
        _userEmail = email;
        _isLoading = false;
        notifyListeners();
        return true;
      } else {
        _isLoading = false;
        notifyListeners();
        return false;
      }
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  /// Simula o processo de registro
  Future<bool> register(String email, String password, String confirmPassword) async {
    _isLoading = true;
    notifyListeners();

    try {
      // Simula uma chamada de API
      await Future.delayed(const Duration(seconds: 2));

      // Validação simples para demonstração
      if (email.isNotEmpty && 
          password.length >= 6 && 
          password == confirmPassword) {
        _isAuthenticated = true;
        _userEmail = email;
        _isLoading = false;
        notifyListeners();
        return true;
      } else {
        _isLoading = false;
        notifyListeners();
        return false;
      }
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  /// Realiza o logout do usuário
  void logout(BuildContext? context) {
    _isAuthenticated = false;
    _userEmail = null;
    
    // Limpa o stack de navegação se o contexto estiver disponível
    if (context != null) {
      final navigationProvider = Provider.of<NavigationProvider>(context, listen: false);
      navigationProvider.resetToRoute(Routes.login);
    }
    
    notifyListeners();
  }

  /// Verifica se o usuário está autenticado (pode ser usado para verificar token salvo)
  Future<void> checkAuthStatus() async {
    // Aqui você poderia verificar se existe um token salvo no SharedPreferences
    // Por enquanto, vamos manter como false
    _isAuthenticated = false;
    notifyListeners();
  }

  /// Simula recuperação de senha
  Future<bool> forgotPassword(String email) async {
    _isLoading = true;
    notifyListeners();

    try {
      // Simula uma chamada de API
      await Future.delayed(const Duration(seconds: 1));
      
      _isLoading = false;
      notifyListeners();
      return email.isNotEmpty;
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }
}