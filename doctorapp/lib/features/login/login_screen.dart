import 'package:doctorapp/core/helpers/spacing.dart';
import 'package:doctorapp/core/theming/styles.dart';
import 'package:doctorapp/core/widgets/app_text_button.dart';
import 'package:doctorapp/features/login/data/models/login_request_body.dart';
import 'package:doctorapp/features/login/logic/cubit/login_cubit.dart';
import 'package:doctorapp/features/login/widgets/dont_have_account_text.dart';
import 'package:doctorapp/features/login/widgets/email_and_password.dart';
import 'package:doctorapp/features/login/widgets/login_bloc_listener.dart';
import 'package:doctorapp/features/login/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in',
                style: TextStyles.font14GrayReguler,
              ),
              verticalSpace(36),
              Column(
                children: [
                  const EmailAndPassword(),
                  // ignore: prefer_const_constructors
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      "Forgot  password?",
                      style: TextStyles.font13BlueReguler,
                    ),
                  ),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: 'Login',
                    onPressed: () {
                      validateThenDoLogin(context);
                    },
                    textStyle: TextStyles.font16WhiteSemiBold,
                  ),
                  verticalSpace(16),
                  const TermsAndConditionsText(),
                  verticalSpace(60),
                  const DontHaveAccountText(),
                  const LoginBlocListener(),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
