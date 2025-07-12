import '../utils/imports/common_libs.dart';


class RegisterProvider {
  RegisterProvider._();

  static List<SingleChildWidget> registerProviders() {
    return [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => LocaleProvider()),
      ChangeNotifierProvider(create: (context) => AuthProvider()),
      ChangeNotifierProvider(create: (context) => NavigationProvider()),
      ChangeNotifierProvider(create: (context) => OnboardingProvider()),
      ChangeNotifierProvider(create: (context) => ProductsProvider()),
      ChangeNotifierProvider(create: (context) => CartProvider()),
      ChangeNotifierProvider(create: (context) => OrdersProvider()),
    ];
  }
}
