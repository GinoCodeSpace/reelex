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
  
  // Forgot Password Page
  static const String forgotPasswordTitle = 'Forgot Password';
  static const String forgotPasswordDescription = 'Please sign in to your existing account';
  static const String sendCode = 'SEND CODE';
  static const String rememberPassword = 'Remember your password? ';
  static const String resetCodeSent = 'Reset code sent to';
  static const String failedToSendResetCode = 'Failed to send reset code. Please try again.';
  
  // Sign Up Page
  static const String signUpTitle = 'Sign Up';
  static const String pleaseSignUp = 'Please sign up to get started';
  static const String name = 'NAME';
  static const String nameHint = 'John doe';
  static const String retypePassword = 'RE-TYPE PASSWORD';
  static const String signUpButton = 'SIGN UP';
  static const String alreadyHaveAccount = 'Already have an account? ';
  static const String registrationFailed = 'Registration failed. Please check your information.';
  static const String signUpWithFacebook = 'Sign up with Facebook';
  static const String signUpWithTwitter = 'Sign up with Twitter';
  static const String signUpWithApple = 'Sign up with Apple';
  
  // UI Components
  static const String back = 'Voltar';
  
  // Form Validation Messages
  static const String pleaseEnterEmail = 'Please enter your email';
  static const String pleaseEnterValidEmail = 'Please enter a valid email';
  static const String pleaseEnterPassword = 'Please enter your password';
  static const String passwordMinLength = 'Password must be at least 6 characters';
  static const String pleaseConfirmPassword = 'Please confirm your password';
  static const String passwordsDoNotMatch = 'Passwords do not match';
  static const String pleaseEnterPhoneNumber = 'Please enter your phone number';
  static const String pleaseEnterValidPhoneNumber = 'Please enter a valid phone number';
  static const String pleaseEnterName = 'Please enter your name';
  static const String nameOnlyLettersAndSpaces = 'Name can only contain letters and spaces';
  static const String nameMinLength = 'Name must be at least 2 characters';
  static const String pleaseEnterUrl = 'Please enter a URL';
  static const String pleaseEnterValidUrl = 'Please enter a valid URL (starting with http:// or https://)';
  static const String pleaseEnterAge = 'Please enter your age';
  static const String pleaseEnterValidNumber = 'Please enter a valid number';
  static const String pleaseEnterValidAge = 'Please enter a valid age (1-120)';
  static const String pleaseEnterYour = 'Please enter your';
  
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