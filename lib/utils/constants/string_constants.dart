import '../imports/common_libs.dart';

/// Classe para centralizar todas as strings da aplicação
/// Esta abordagem facilita a internacionalização
class StringConstants {
  StringConstants._();

  // Mapa de strings por idioma
  static const Map<String, Map<String, String>> _localizedStrings = {
    'pt_BR': {
      // App Bar
      'languageSelection': 'Selecionar idioma',
      'lightMode': 'Modo claro',
      'darkMode': 'Modo escuro',
      
      // Home Page
      'home': 'Início',
      'logout': 'Sair',
      'welcome': 'Bem-vindo!',
      'user': 'Usuário',
      'authenticated': 'Você está autenticado!',
      'authenticatedDescription': 'Esta página só pode ser acessada por usuários logados.',
      
      // Login Page
      'logIn': 'Entrar',
      'pleaseSignIn': 'Por favor, faça login em sua conta existente',
      'email': 'EMAIL',
      'emailHint': 'exemplo@gmail.com',
      'password': 'SENHA',
      'passwordHint': '••••••••••••',
      'rememberMe': 'Lembrar de mim',
      'forgotPassword': 'Esqueceu a senha',
      'logInButton': 'ENTRAR',
      'dontHaveAccount': 'Não tem uma conta? ',
      'signUp': 'CADASTRAR',
      'or': 'Ou',
      'loginFailed': 'Login falhou. Verifique suas credenciais.',
      'loginWithFacebook': 'Entrar com Facebook',
      'loginWithTwitter': 'Entrar com Twitter',
      'loginWithApple': 'Entrar com Apple',
      
      // Forgot Password Page
      'forgotPasswordTitle': 'Esqueceu a Senha',
      'forgotPasswordDescription': 'Por favor, faça login em sua conta existente',
      'sendCode': 'ENVIAR CÓDIGO',
      'rememberPassword': 'Lembra da sua senha? ',
      'resetCodeSent': 'Código de redefinição enviado para',
      'failedToSendResetCode': 'Falha ao enviar código de redefinição. Tente novamente.',
      
      // Sign Up Page
      'signUpTitle': 'Cadastrar',
      'pleaseSignUp': 'Por favor, cadastre-se para começar',
      'name': 'NOME',
      'nameHint': 'João Silva',
      'retypePassword': 'CONFIRMAR SENHA',
      'signUpButton': 'CADASTRAR',
      'alreadyHaveAccount': 'Já tem uma conta? ',
      'registrationFailed': 'Cadastro falhou. Verifique suas informações.',
      'signUpWithFacebook': 'Cadastrar com Facebook',
      'signUpWithTwitter': 'Cadastrar com Twitter',
      'signUpWithApple': 'Cadastrar com Apple',
      
      // UI Components
      'back': 'Voltar',
      
      // Form Validation Messages
      'pleaseEnterEmail': 'Por favor, digite seu email',
      'pleaseEnterValidEmail': 'Por favor, digite um email válido',
      'pleaseEnterPassword': 'Por favor, digite sua senha',
      'passwordMinLength': 'A senha deve ter pelo menos 6 caracteres',
      'pleaseConfirmPassword': 'Por favor, confirme sua senha',
      'passwordsDoNotMatch': 'As senhas não coincidem',
      'pleaseEnterPhoneNumber': 'Por favor, digite seu número de telefone',
      'pleaseEnterValidPhoneNumber': 'Por favor, digite um número de telefone válido',
      'pleaseEnterName': 'Por favor, digite seu nome',
      'nameOnlyLettersAndSpaces': 'O nome pode conter apenas letras e espaços',
      'nameMinLength': 'O nome deve ter pelo menos 2 caracteres',
      'pleaseEnterUrl': 'Por favor, digite uma URL',
      'pleaseEnterValidUrl': 'Por favor, digite uma URL válida (começando com http:// ou https://)',
      'pleaseEnterAge': 'Por favor, digite sua idade',
      'pleaseEnterValidNumber': 'Por favor, digite um número válido',
      'pleaseEnterValidAge': 'Por favor, digite uma idade válida (1-120)',
      'pleaseEnterYour': 'Por favor, digite seu',
      
      // Onboarding
      'onboardingTitle1': 'Todos os seus favoritos',
      'onboardingDescription1': 'Tenha todas as suas comidas favoritas em um só lugar, você só faz o pedido e nós fazemos o resto',
      'onboardingTitle2': 'Peça do chef escolhido',
      'onboardingDescription2': 'Tenha todas as suas comidas favoritas em um só lugar, você só faz o pedido e nós fazemos o resto',
      'onboardingTitle3': 'Ofertas de entrega grátis',
      'onboardingDescription3': 'Tenha todas as suas comidas favoritas em um só lugar, você só faz o pedido e nós fazemos o resto',
      'next': 'PRÓXIMO',
      'skip': 'Pular',
      'getStarted': 'COMEÇAR',
    },
    'en_US': {
      // App Bar
      'languageSelection': 'Select language',
      'lightMode': 'Light mode',
      'darkMode': 'Dark mode',
      
      // Home Page
      'home': 'Home',
      'logout': 'Logout',
      'welcome': 'Welcome!',
      'user': 'User',
      'authenticated': 'You are authenticated!',
      'authenticatedDescription': 'This page can only be accessed by logged in users.',
      
      // Login Page
      'logIn': 'Log In',
      'pleaseSignIn': 'Please sign in to your existing account',
      'email': 'EMAIL',
      'emailHint': 'example@gmail.com',
      'password': 'PASSWORD',
      'passwordHint': '••••••••••••',
      'rememberMe': 'Remember me',
      'forgotPassword': 'Forgot Password',
      'logInButton': 'LOG IN',
      'dontHaveAccount': "Don't have an account? ",
      'signUp': 'SIGN UP',
      'or': 'Or',
      'loginFailed': 'Login failed. Please check your credentials.',
      'loginWithFacebook': 'Login with Facebook',
      'loginWithTwitter': 'Login with Twitter',
      'loginWithApple': 'Login with Apple',
      
      // Forgot Password Page
      'forgotPasswordTitle': 'Forgot Password',
      'forgotPasswordDescription': 'Please sign in to your existing account',
      'sendCode': 'SEND CODE',
      'rememberPassword': 'Remember your password? ',
      'resetCodeSent': 'Reset code sent to',
      'failedToSendResetCode': 'Failed to send reset code. Please try again.',
      
      // Sign Up Page
      'signUpTitle': 'Sign Up',
      'pleaseSignUp': 'Please sign up to get started',
      'name': 'NAME',
      'nameHint': 'John doe',
      'retypePassword': 'RE-TYPE PASSWORD',
      'signUpButton': 'SIGN UP',
      'alreadyHaveAccount': 'Already have an account? ',
      'registrationFailed': 'Registration failed. Please check your information.',
      'signUpWithFacebook': 'Sign up with Facebook',
      'signUpWithTwitter': 'Sign up with Twitter',
      'signUpWithApple': 'Sign up with Apple',
      
      // UI Components
      'back': 'Back',
      
      // Form Validation Messages
      'pleaseEnterEmail': 'Please enter your email',
      'pleaseEnterValidEmail': 'Please enter a valid email',
      'pleaseEnterPassword': 'Please enter your password',
      'passwordMinLength': 'Password must be at least 6 characters',
      'pleaseConfirmPassword': 'Please confirm your password',
      'passwordsDoNotMatch': 'Passwords do not match',
      'pleaseEnterPhoneNumber': 'Please enter your phone number',
      'pleaseEnterValidPhoneNumber': 'Please enter a valid phone number',
      'pleaseEnterName': 'Please enter your name',
      'nameOnlyLettersAndSpaces': 'Name can only contain letters and spaces',
      'nameMinLength': 'Name must be at least 2 characters',
      'pleaseEnterUrl': 'Please enter a URL',
      'pleaseEnterValidUrl': 'Please enter a valid URL (starting with http:// or https://)',
      'pleaseEnterAge': 'Please enter your age',
      'pleaseEnterValidNumber': 'Please enter a valid number',
      'pleaseEnterValidAge': 'Please enter a valid age (1-120)',
      'pleaseEnterYour': 'Please enter your',
      
      // Onboarding
      'onboardingTitle1': 'All your favorites',
      'onboardingDescription1': 'Get all your loved foods in one once place, you just place the orer we do the rest',
      'onboardingTitle2': 'Order from choosen chef',
      'onboardingDescription2': 'Get all your loved foods in one once place, you just place the orer we do the rest',
      'onboardingTitle3': 'Free delivery offers',
      'onboardingDescription3': 'Get all your loved foods in one once place, you just place the orer we do the rest',
      'next': 'NEXT',
      'skip': 'Skip',
      'getStarted': 'GET STARTED',
    },
    'es_MX': {
      // App Bar
      'languageSelection': 'Seleccionar idioma',
      'lightMode': 'Modo claro',
      'darkMode': 'Modo oscuro',
      
      // Home Page
      'home': 'Inicio',
      'logout': 'Cerrar sesión',
      'welcome': '¡Bienvenido!',
      'user': 'Usuario',
      'authenticated': '¡Estás autenticado!',
      'authenticatedDescription': 'Esta página solo puede ser accedida por usuarios conectados.',
      
      // Login Page
      'logIn': 'Iniciar Sesión',
      'pleaseSignIn': 'Por favor, inicia sesión en tu cuenta existente',
      'email': 'EMAIL',
      'emailHint': 'ejemplo@gmail.com',
      'password': 'CONTRASEÑA',
      'passwordHint': '••••••••••••',
      'rememberMe': 'Recordarme',
      'forgotPassword': 'Olvidé mi contraseña',
      'logInButton': 'INICIAR SESIÓN',
      'dontHaveAccount': '¿No tienes una cuenta? ',
      'signUp': 'REGISTRARSE',
      'or': 'O',
      'loginFailed': 'Inicio de sesión falló. Verifica tus credenciales.',
      'loginWithFacebook': 'Iniciar sesión con Facebook',
      'loginWithTwitter': 'Iniciar sesión con Twitter',
      'loginWithApple': 'Iniciar sesión con Apple',
      
      // Forgot Password Page
      'forgotPasswordTitle': 'Olvidé mi Contraseña',
      'forgotPasswordDescription': 'Por favor, inicia sesión en tu cuenta existente',
      'sendCode': 'ENVIAR CÓDIGO',
      'rememberPassword': '¿Recuerdas tu contraseña? ',
      'resetCodeSent': 'Código de restablecimiento enviado a',
      'failedToSendResetCode': 'Error al enviar código de restablecimiento. Inténtalo de nuevo.',
      
      // Sign Up Page
      'signUpTitle': 'Registrarse',
      'pleaseSignUp': 'Por favor, regístrate para comenzar',
      'name': 'NOMBRE',
      'nameHint': 'Juan Pérez',
      'retypePassword': 'CONFIRMAR CONTRASEÑA',
      'signUpButton': 'REGISTRARSE',
      'alreadyHaveAccount': '¿Ya tienes una cuenta? ',
      'registrationFailed': 'Registro falló. Verifica tu información.',
      'signUpWithFacebook': 'Registrarse con Facebook',
      'signUpWithTwitter': 'Registrarse con Twitter',
      'signUpWithApple': 'Registrarse con Apple',
      
      // UI Components
      'back': 'Atrás',
      
      // Form Validation Messages
      'pleaseEnterEmail': 'Por favor, ingresa tu email',
      'pleaseEnterValidEmail': 'Por favor, ingresa un email válido',
      'pleaseEnterPassword': 'Por favor, ingresa tu contraseña',
      'passwordMinLength': 'La contraseña debe tener al menos 6 caracteres',
      'pleaseConfirmPassword': 'Por favor, confirma tu contraseña',
      'passwordsDoNotMatch': 'Las contraseñas no coinciden',
      'pleaseEnterPhoneNumber': 'Por favor, ingresa tu número de teléfono',
      'pleaseEnterValidPhoneNumber': 'Por favor, ingresa un número de teléfono válido',
      'pleaseEnterName': 'Por favor, ingresa tu nombre',
      'nameOnlyLettersAndSpaces': 'El nombre solo puede contener letras y espacios',
      'nameMinLength': 'El nombre debe tener al menos 2 caracteres',
      'pleaseEnterUrl': 'Por favor, ingresa una URL',
      'pleaseEnterValidUrl': 'Por favor, ingresa una URL válida (comenzando con http:// o https://)',
      'pleaseEnterAge': 'Por favor, ingresa tu edad',
      'pleaseEnterValidNumber': 'Por favor, ingresa un número válido',
      'pleaseEnterValidAge': 'Por favor, ingresa una edad válida (1-120)',
      'pleaseEnterYour': 'Por favor, ingresa tu',
      
      // Onboarding
      'onboardingTitle1': 'Todos tus favoritos',
      'onboardingDescription1': 'Obtén todas tus comidas favoritas en un solo lugar, solo haces el pedido y nosotros hacemos el resto',
      'onboardingTitle2': 'Pide del chef elegido',
      'onboardingDescription2': 'Obtén todas tus comidas favoritas en un solo lugar, solo haces el pedido y nosotros hacemos el resto',
      'onboardingTitle3': 'Ofertas de entrega gratis',
      'onboardingDescription3': 'Obtén todas tus comidas favoritas en un solo lugar, solo haces el pedido y nosotros hacemos el resto',
      'next': 'SIGUIENTE',
      'skip': 'Saltar',
      'getStarted': 'COMENZAR',
    },
  };

  /// Método para obter string localizada baseada no contexto atual
  static String getLocalizedString(BuildContext context, String key) {
    final localeProvider = Provider.of<LocaleProvider>(context, listen: true);
    final localeKey = '${localeProvider.currentLocale.languageCode}_${localeProvider.currentLocale.countryCode}';
    
    return _localizedStrings[localeKey]?[key] ?? 
           _localizedStrings['en_US']?[key] ?? 
           key;
  }

  /// Método para obter string localizada sem contexto (usando locale padrão)
  static String getLocalizedStringWithLocale(Locale locale, String key) {
    final localeKey = '${locale.languageCode}_${locale.countryCode}';
    
    return _localizedStrings[localeKey]?[key] ?? 
           _localizedStrings['en_US']?[key] ?? 
           key;
  }

  // Métodos de conveniência para compatibilidade com código existente
  // App Bar
  static String languageSelection(BuildContext context) => getLocalizedString(context, 'languageSelection');
  static String lightMode(BuildContext context) => getLocalizedString(context, 'lightMode');
  static String darkMode(BuildContext context) => getLocalizedString(context, 'darkMode');
  
  // Home Page
  static String home(BuildContext context) => getLocalizedString(context, 'home');
  static String logout(BuildContext context) => getLocalizedString(context, 'logout');
  static String welcome(BuildContext context) => getLocalizedString(context, 'welcome');
  static String user(BuildContext context) => getLocalizedString(context, 'user');
  static String authenticated(BuildContext context) => getLocalizedString(context, 'authenticated');
  static String authenticatedDescription(BuildContext context) => getLocalizedString(context, 'authenticatedDescription');
  
  // Login Page
  static String logIn(BuildContext context) => getLocalizedString(context, 'logIn');
  static String pleaseSignIn(BuildContext context) => getLocalizedString(context, 'pleaseSignIn');
  static String email(BuildContext context) => getLocalizedString(context, 'email');
  static String emailHint(BuildContext context) => getLocalizedString(context, 'emailHint');
  static String password(BuildContext context) => getLocalizedString(context, 'password');
  static String passwordHint(BuildContext context) => getLocalizedString(context, 'passwordHint');
  static String rememberMe(BuildContext context) => getLocalizedString(context, 'rememberMe');
  static String forgotPassword(BuildContext context) => getLocalizedString(context, 'forgotPassword');
  static String logInButton(BuildContext context) => getLocalizedString(context, 'logInButton');
  static String dontHaveAccount(BuildContext context) => getLocalizedString(context, 'dontHaveAccount');
  static String signUp(BuildContext context) => getLocalizedString(context, 'signUp');
  static String or(BuildContext context) => getLocalizedString(context, 'or');
  static String loginFailed(BuildContext context) => getLocalizedString(context, 'loginFailed');
  static String loginWithFacebook(BuildContext context) => getLocalizedString(context, 'loginWithFacebook');
  static String loginWithTwitter(BuildContext context) => getLocalizedString(context, 'loginWithTwitter');
  static String loginWithApple(BuildContext context) => getLocalizedString(context, 'loginWithApple');
  
  // Forgot Password Page
  static String forgotPasswordTitle(BuildContext context) => getLocalizedString(context, 'forgotPasswordTitle');
  static String forgotPasswordDescription(BuildContext context) => getLocalizedString(context, 'forgotPasswordDescription');
  static String sendCode(BuildContext context) => getLocalizedString(context, 'sendCode');
  static String rememberPassword(BuildContext context) => getLocalizedString(context, 'rememberPassword');
  static String resetCodeSent(BuildContext context) => getLocalizedString(context, 'resetCodeSent');
  static String failedToSendResetCode(BuildContext context) => getLocalizedString(context, 'failedToSendResetCode');
  
  // Sign Up Page
  static String signUpTitle(BuildContext context) => getLocalizedString(context, 'signUpTitle');
  static String pleaseSignUp(BuildContext context) => getLocalizedString(context, 'pleaseSignUp');
  static String name(BuildContext context) => getLocalizedString(context, 'name');
  static String nameHint(BuildContext context) => getLocalizedString(context, 'nameHint');
  static String retypePassword(BuildContext context) => getLocalizedString(context, 'retypePassword');
  static String signUpButton(BuildContext context) => getLocalizedString(context, 'signUpButton');
  static String alreadyHaveAccount(BuildContext context) => getLocalizedString(context, 'alreadyHaveAccount');
  static String registrationFailed(BuildContext context) => getLocalizedString(context, 'registrationFailed');
  static String signUpWithFacebook(BuildContext context) => getLocalizedString(context, 'signUpWithFacebook');
  static String signUpWithTwitter(BuildContext context) => getLocalizedString(context, 'signUpWithTwitter');
  static String signUpWithApple(BuildContext context) => getLocalizedString(context, 'signUpWithApple');
  
  // UI Components
  static String back(BuildContext context) => getLocalizedString(context, 'back');
  
  // Form Validation Messages
  static String pleaseEnterEmail(BuildContext context) => getLocalizedString(context, 'pleaseEnterEmail');
  static String pleaseEnterValidEmail(BuildContext context) => getLocalizedString(context, 'pleaseEnterValidEmail');
  static String pleaseEnterPassword(BuildContext context) => getLocalizedString(context, 'pleaseEnterPassword');
  static String passwordMinLength(BuildContext context) => getLocalizedString(context, 'passwordMinLength');
  static String pleaseConfirmPassword(BuildContext context) => getLocalizedString(context, 'pleaseConfirmPassword');
  static String passwordsDoNotMatch(BuildContext context) => getLocalizedString(context, 'passwordsDoNotMatch');
  static String pleaseEnterPhoneNumber(BuildContext context) => getLocalizedString(context, 'pleaseEnterPhoneNumber');
  static String pleaseEnterValidPhoneNumber(BuildContext context) => getLocalizedString(context, 'pleaseEnterValidPhoneNumber');
  static String pleaseEnterName(BuildContext context) => getLocalizedString(context, 'pleaseEnterName');
  static String nameOnlyLettersAndSpaces(BuildContext context) => getLocalizedString(context, 'nameOnlyLettersAndSpaces');
  static String nameMinLength(BuildContext context) => getLocalizedString(context, 'nameMinLength');
  static String pleaseEnterUrl(BuildContext context) => getLocalizedString(context, 'pleaseEnterUrl');
  static String pleaseEnterValidUrl(BuildContext context) => getLocalizedString(context, 'pleaseEnterValidUrl');
  static String pleaseEnterAge(BuildContext context) => getLocalizedString(context, 'pleaseEnterAge');
  static String pleaseEnterValidNumber(BuildContext context) => getLocalizedString(context, 'pleaseEnterValidNumber');
  static String pleaseEnterValidAge(BuildContext context) => getLocalizedString(context, 'pleaseEnterValidAge');
  static String pleaseEnterYour(BuildContext context) => getLocalizedString(context, 'pleaseEnterYour');
  
  // Onboarding
  static String onboardingTitle1(BuildContext context) => getLocalizedString(context, 'onboardingTitle1');
  static String onboardingDescription1(BuildContext context) => getLocalizedString(context, 'onboardingDescription1');
  static String onboardingTitle2(BuildContext context) => getLocalizedString(context, 'onboardingTitle2');
  static String onboardingDescription2(BuildContext context) => getLocalizedString(context, 'onboardingDescription2');
  static String onboardingTitle3(BuildContext context) => getLocalizedString(context, 'onboardingTitle3');
  static String onboardingDescription3(BuildContext context) => getLocalizedString(context, 'onboardingDescription3');
  static String next(BuildContext context) => getLocalizedString(context, 'next');
  static String skip(BuildContext context) => getLocalizedString(context, 'skip');
  static String getStarted(BuildContext context) => getLocalizedString(context, 'getStarted');
  
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