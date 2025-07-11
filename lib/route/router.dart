import '../utils/imports/common_libs.dart';
import '../view/page/login_page.dart';
import '../view/page/orders_page.dart';

final GoRouter appRouter = GoRouter(
  redirect: HandleRedirect().handleRedirect,
  observers: [],
  routes: [
    ShellRoute(
      builder: (context, router, widget) {
        return ScaffoldSliver(child: widget);
      },
      routes: [
        AppRoute(Routes.home, (state) => HomePage()),
        AppRoute(Routes.login, (state) => LoginPage()),
        AppRoute(Routes.signUp, (state) => SignUpPage()),
        AppRoute(Routes.forgotPassword, (state) => ForgotPasswordPage()),
        AppRoute(Routes.onboarding, (state) => OnboardingPage()),
        AppRoute(Routes.orders, (state) => OrdersPage()),
      ],
    ),
  ],
);
