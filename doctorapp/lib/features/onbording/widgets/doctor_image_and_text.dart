import 'package:doctorapp/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svg/docdoc_locg_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14, 0.4]),
          ),
          child: Image.asset('assets/images/onboarding.png'),
        ),
        Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Text(
              'Best Doctor Appointments App ',
              textAlign: TextAlign.center,
              style: TextStyles.font32blueBold.copyWith(height: 1.4),
            ))
      ],
    );
  }
}
