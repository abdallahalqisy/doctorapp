import 'package:doctorapp/core/helpers/spacing.dart';
import 'package:doctorapp/features/home/logic/home_cubit.dart';
import 'package:doctorapp/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctorapp/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:doctorapp/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationAndDoctorBlocBuilder extends StatelessWidget {
  const SpecializationAndDoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsError ||
          current is SpecializationsLoading ||
          current is SpecializationsSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationResponseModel) {
            var specializationsList =
                specializationResponseModel.specializationsDataList;
            return setupSuccess(specializationsList);
          },
          specializationsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return SizedBox(
        height: 100, child: Center(child: const CircularProgressIndicator()));
  }

  setupError() {
    return const SizedBox.shrink();
  }

  setupSuccess(specializationsList) {
    return Expanded(
      child: Column(
        children: [
          DoctorsSpecialityListView(
            specializationsList: specializationsList ?? [],
          ),
          verticalSpace(8.h),
          DoctorsListView(
            doctorsList: specializationsList?[1]?.doctorsList,
          )
        ],
      ),
    );
  }
}
