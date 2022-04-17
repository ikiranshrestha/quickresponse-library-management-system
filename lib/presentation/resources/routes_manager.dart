import 'package:flutter/material.dart';
import 'package:lms/presentation/login/login.dart';
import 'package:lms/presentation/onboarding/onboarding.dart';
import 'package:lms/presentation/register/register.dart';
import 'package:lms/presentation/resources/strings_manager.dart';
import 'package:lms/presentation/splash/splash.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onboarding';
  static const String loginRoute = '/login';
  static const String registerhRoute = '/register';
  static const String mainRoute = '/main';
  static const String booksRoute = '/bookslist';
  static const String issueRoute = '/issuedlist';
  static const String studentListRoute = '/studentlist';
  static const String studentViewRoute = '/studentviewlist';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.registerhRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.mainRoute:
        return unDefinedRoute();
      case Routes.studentListRoute:
        return unDefinedRoute();
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text(AppStrings.noRouteFound),
          ),
          body: const Text(AppStrings.noRouteFound)),
    );
  }
}
