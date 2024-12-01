import 'package:flutter/material.dart';
import 'package:greenify_app/core/routes/routes.dart';
import 'package:greenify_app/features/register/presentation/screen/ui/register_screen.dart';
import 'package:greenify_app/features/splash/presentation/screen/ui/splash_screen.dart';
import 'package:greenify_app/features/on_boarding/presentation/screen/ui/on_boarding_screen.dart';

class AppRouting {
  Route? generateRoute(RouteSettings routesSettings) {
    switch (routesSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routesSettings.name}'),
            ),
          ),
        );
    }
  }
}
