import 'package:doctorapp/core/helpers/spacing.dart';
import 'package:doctorapp/features/home/logic/home_cubit.dart';
import 'package:doctorapp/features/home/logic/home_state.dart';
import 'package:doctorapp/features/home/ui/widgets/doctors_list/doctors_shimmar_loading.dart';
import 'package:doctorapp/features/home/ui/widgets/speciality_list/speciality_shimmer_loading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctorapp/features/home/ui/widgets/speciality_list/speciality_list_view.dart';
import 'package:flutter/material.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

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
          specializationsSuccess: (specializationDataList) {
            var specializationsList = specializationDataList;
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
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  setupError() {
    return const SizedBox.shrink();
  }

  setupSuccess(specializationsList) {
    return SpecialityListView(
      specializationDataList: specializationsList ?? [],
    );
  }
}
