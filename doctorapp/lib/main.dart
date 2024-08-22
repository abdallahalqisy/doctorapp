import 'package:doctorapp/core/di/dependency_injection.dart';
import 'package:doctorapp/core/helpers/constants.dart';
import 'package:doctorapp/core/helpers/extentions.dart';
import 'package:doctorapp/core/helpers/shared_pref_helper.dart';
import 'package:doctorapp/core/routing/app_router.dart';
import 'package:doctorapp/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

bool isLoggedinUser = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await checkIfLoggedInUser();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedinUser = true;
  } else {
    isLoggedinUser = false;
  }
}
