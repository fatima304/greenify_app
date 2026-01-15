import 'core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:greenify_app/core/routes/app_routing.dart';

class GreenifyApp extends StatelessWidget {
  const GreenifyApp({super.key, required this.appRouting});

  final AppRouting appRouting;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouting.generateRoute,
        initialRoute: Routes.otpVerifyScreen,
    );
  }
}
