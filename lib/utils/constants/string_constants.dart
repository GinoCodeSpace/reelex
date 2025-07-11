import '../imports/common_libs.dart';

/// Classe para centralizar todas as strings da aplicação
/// Esta abordagem facilita a internacionalização futura
class StringConstants {
  StringConstants._();

  // App Bar
  static const String languageSelection = 'Selecionar idioma';
  static const String lightMode = 'Modo claro';
  static const String darkMode = 'Modo escuro';
  
  // Home Page
  static const String home = 'Home';
  static const String logout = 'Logout';
  static const String welcome = 'Bem-vindo!';
  static const String user = 'Usuário';
  static const String authenticated = 'Você está autenticado!';
  static const String authenticatedDescription = 'Esta página só pode ser acessada por usuários logados.';
  
  // Login Page
  static const String logIn = 'Log In';
  static const String pleaseSignIn = 'Please sign in to your existing account';
  static const String email = 'EMAIL';
  static const String emailHint = 'example@gmail.com';
  static const String password = 'PASSWORD';
  static const String passwordHint = '••••••••••••';
  static const String rememberMe = 'Remember me';
  static const String forgotPassword = 'Forgot Password';
  static const String logInButton = 'LOG IN';
  static const String dontHaveAccount = "Don't have an account? ";
  static const String signUp = 'SIGN UP';
  static const String or = 'Or';
  static const String loginFailed = 'Login failed. Please check your credentials.';
  static const String loginWithFacebook = 'Login with Facebook';
  static const String loginWithTwitter = 'Login with Twitter';
  static const String loginWithApple = 'Login with Apple';
  
  // Locale Display Names (pode ser expandido para suporte a i18n)
  static const Map<String, String> localeDisplayNames = {
    'pt_BR': 'Português',
    'en_US': 'English',
    'es_MX': 'Español',
  };
  
  // Locale Tooltips
  static const Map<String, String> localeTooltips = {
    'pt_BR': 'Português do Brasil',
    'en_US': 'English (United States)',
    'es_MX': 'Español (México)',
  };
  
  /// Método helper para obter o nome de exibição de um locale
  static String getLocaleDisplayName(Locale locale) {
    final key = '${locale.languageCode}_${locale.countryCode}';
    return localeDisplayNames[key] ?? locale.languageCode;
  }
  
  /// Método helper para obter o tooltip de um locale
  static String getLocaleTooltip(Locale locale) {
    final key = '${locale.languageCode}_${locale.countryCode}';
    return localeTooltips[key] ?? locale.toString();
  }
}