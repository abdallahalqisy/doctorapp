import 'package:doctorapp/core/helpers/spacing.dart';

import 'package:doctorapp/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:doctorapp/features/home/ui/widgets/doctors_list/doctors_bloc_builder.dart';
import 'package:doctorapp/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:doctorapp/features/home/ui/widgets/home_top_bar.dart';
import 'package:doctorapp/features/home/ui/widgets/speciality_list/specialization_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              DoctorBlueContainer(),
              verticalSpace(24),
              DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              SpecializationBlocBuilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
