import 'package:doctorapp/core/helpers/extentions.dart';
import 'package:doctorapp/core/routing/routes.dart';
import 'package:doctorapp/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: WidgetStateProperty.all(Colors.blue),
          minimumSize: WidgetStateProperty.all(
            const Size(double.infinity, 52),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        child: Text(
          'Get started',
          style: TextStyles.font16WhiteMedium,
        ));
  }
}
