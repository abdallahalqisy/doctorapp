import 'package:doctorapp/core/di/dependency_injection.dart';
import 'package:doctorapp/core/routing/routes.dart';
import 'package:doctorapp/features/home/logic/home_cubit.dart';
import 'package:doctorapp/features/home/ui/home_screen.dart';

import 'package:doctorapp/features/login/logic/cubit/login_cubit.dart';
import 'package:doctorapp/features/login/login_screen.dart';
import 'package:doctorapp/features/onbording/onbording_screen.dart';
import 'package:doctorapp/features/sign_up/logic/sign_up_cubit.dart';
import 'package:doctorapp/features/sign_up/ui/sign_up_screan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings setting) {
    final argument = setting.arguments;
    switch (setting.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnbordingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const HomeScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
