import '../../utils/imports/common_libs.dart';

class HandleRedirect {
  String? get initialDeeplink => _initialDeeplink;
  String? _initialDeeplink;

  String? handleRedirect(BuildContext context, GoRouterState state) {
    _initialDeeplink ??= state.uri.toString();

    return _redirectBasedOnState(state, context);
  }

  String? _redirectBasedOnState(GoRouterState state, BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final onboardingProvider = Provider.of<OnboardingProvider>(context, listen: false);
    final currentPath = state.uri.path;
    
    // Rotas que não precisam de autenticação
    final publicRoutes = [
      Routes.login,
      Routes.signUp,
      Routes.forgotPassword,
      Routes.onboarding,
    ];
    
    // Se o onboarding não foi completado e não está na rota de onboarding
    if (!onboardingProvider.isOnboardingCompleted && currentPath != Routes.onboarding) {
      return Routes.onboarding;
    }
    
    // Se o usuário não está autenticado e está tentando acessar uma rota protegida
    if (!authProvider.isAuthenticated && !publicRoutes.contains(currentPath)) {
      return Routes.login;
    }
    
    // Se o usuário está autenticado e está tentando acessar a página de login
    if (authProvider.isAuthenticated && currentPath == Routes.login) {
      return Routes.home;
    }
    
    // Permite navegação normal
    return null;
  }
}
