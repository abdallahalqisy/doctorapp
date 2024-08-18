import 'package:doctorapp/core/routing/app_router.dart';
import 'package:doctorapp/core/routing/routes.dart';
import 'package:doctorapp/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        initialRoute: Routes.homeScreen,
        debugShowCheckedModeBanner: false,
        title: 'DocApp',
        theme: ThemeData(
            primaryColor: ColorMenager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
