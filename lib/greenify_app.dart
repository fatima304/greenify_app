import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:greenify_app/core/routes/app_routing.dart';
import 'core/routes/routes.dart';

class GreenifyApp extends StatelessWidget {
  const GreenifyApp({super.key, required this.appRouting});

  final AppRouting appRouting;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 815),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouting.generateRoute,
        initialRoute: Routes.registerScreen,
      ),
    );
  }
}
