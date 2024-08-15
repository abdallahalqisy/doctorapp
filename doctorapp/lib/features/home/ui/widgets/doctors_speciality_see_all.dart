import 'package:doctorapp/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Specialty',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        Spacer(),
        Text(
          'See All',
          style: TextStyles.font12BlueReguler,
        ),
      ],
    );
  }
}
