import '../utils/imports/common_libs.dart';

class Bootstrap {
  Bootstrap._();

  static Future<void> initialize() async {
    DependencyInjection.registerDependencies();
    _configureRouter();
    await _initializeAuth();
  }

  static void _configureRouter() {
    GoRouter.optionURLReflectsImperativeAPIs = true;
  }

  static Future<void> _initializeAuth() async {
    // Aqui você pode verificar se existe um token salvo e restaurar o estado de autenticação
    // Por enquanto, apenas inicializamos o estado como não autenticado
  }
}
