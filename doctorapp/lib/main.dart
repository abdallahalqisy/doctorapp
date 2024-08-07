import 'package:doctorapp/core/di/dependency_injection.dart';
import 'package:doctorapp/core/routing/app_router.dart';
import 'package:doctorapp/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
