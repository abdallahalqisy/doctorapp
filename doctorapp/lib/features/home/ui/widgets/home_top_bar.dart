import 'package:doctorapp/core/theming/colors.dart';
import 'package:doctorapp/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Abdallah!',
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              'How Are you Today?',
              style: TextStyles.font12GrayReguler,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24,
          child: SvgPicture.asset('assets/svg/Button.svg'),
          backgroundColor: ColorMenager.moreLighterGrey,
        ),
      ],
    );
  }
}
