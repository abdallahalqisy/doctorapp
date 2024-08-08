import 'package:doctorapp/core/helpers/extentions.dart';
import 'package:doctorapp/core/routing/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'don\'t have an account?',
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
            text: ' Sign Up',
            style: TextStyles.font13BlueReguler,
          ),
        ],
      ),
    );
  }
}
