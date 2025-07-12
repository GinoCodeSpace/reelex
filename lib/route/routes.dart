class RouteInfo {
  final String name;
  final String path;

  const RouteInfo({required this.name, required this.path});
}

class Routes {
  static const List<RouteInfo> routes = [
    RouteInfo(name: 'Home', path: '/'),
    RouteInfo(name: 'Login', path: '/login'),
    RouteInfo(name: 'SignUp', path: '/sign-up'),
    RouteInfo(name: 'ForgotPassword', path: '/forgot-password'),
    RouteInfo(name: 'Onboarding', path: '/onboarding'),
    RouteInfo(name: 'Example', path: '/example'),
    RouteInfo(name: 'Orders', path: '/orders'),
  ];

  // Helper method to get route by name
  static String getPathByName(String name) {
    return routes.firstWhere((route) => route.name == name).path;
  }

  // Helper method to get all route names
  static List<String> get allRouteNames =>
      routes.map((route) => route.name).toList();

  // Convenience getters for easy access
  static String get home =>
      routes.firstWhere((route) => route.name == 'Home').path;
  static String get login =>
      routes.firstWhere((route) => route.name == 'Login').path;
  static String get signUp =>
      routes.firstWhere((route) => route.name == 'SignUp').path;
  static String get forgotPassword =>
      routes.firstWhere((route) => route.name == 'ForgotPassword').path;
  static String get onboarding =>
      routes.firstWhere((route) => route.name == 'Onboarding').path;
  static String get example =>
      routes.firstWhere((route) => route.name == 'Example').path;
  static String get orders =>
      routes.firstWhere((route) => route.name == 'Orders').path;
}
