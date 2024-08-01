import 'package:doctorapp/core/routing/routes.dart';
import 'package:doctorapp/features/login/login_screen.dart';
import 'package:doctorapp/features/onbording/onbording_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
    final argument = setting.arguments;
    switch (setting.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnbordingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('NO route defined for ${setting.name}'),
            ),
          ),
        );
    }
  }
}
