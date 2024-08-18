import 'package:doctorapp/core/helpers/spacing.dart';
import 'package:doctorapp/core/theming/colors.dart';
import 'package:doctorapp/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/styles.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  const DoctorsSpecialityListViewItem(
      {super.key, this.specializationsData, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorMenager.circl,
            child: SvgPicture.asset(
              'assets/svg/general_speciality.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? 'Speciality',
            style: TextStyles.Font12DarkBlueReguler,
          ),
        ],
      ),
    );
    ;
  }
}
