import 'package:doctorapp/core/di/dependency_injection.dart';
import 'package:doctorapp/core/routing/app_router.dart';
import 'package:doctorapp/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
