import 'package:flutter/material.dart';
import 'package:greenify_app/core/routes/routes.dart';
import 'package:greenify_app/features/login/presentation/screen/ui/login_screen.dart';
import 'package:greenify_app/features/otp/presentation/screen/ui/otp_code_screen.dart';
import 'package:greenify_app/features/otp/presentation/screen/ui/otp_success_screen.dart';
import 'package:greenify_app/features/otp/presentation/screen/ui/otp_verfication_screen.dart';
import 'package:greenify_app/features/register/presentation/screen/ui/register_screen.dart';
import 'package:greenify_app/features/signup/presentation/screen/ui/signup_screen.dart';
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
      case Routes.logScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case Routes.otpCodeScreen:
        return MaterialPageRoute(
          builder: (_) => const OtpCodeScreen(),
        );
      case Routes.otpVerifyScreen:
        return MaterialPageRoute(
          builder: (_) => const OtpVerifivationScreen(),
        );
      case Routes.otpSuccessScreen:
        return MaterialPageRoute(
          builder: (_) => const OtpSuccessScreen(),
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
