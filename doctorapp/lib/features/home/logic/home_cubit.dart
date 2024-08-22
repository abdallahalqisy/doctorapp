import 'package:bloc/bloc.dart';
import 'package:doctorapp/core/helpers/extentions.dart';
import 'package:doctorapp/core/networking/api_error_handler.dart';
import 'package:doctorapp/features/home/data/models/specialization_response_model.dart';
import 'package:doctorapp/features/home/data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  List<SpecializationsData?>? specializationsList = [];
  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (specializationResponseModel) {
        specializationsList =
            specializationResponseModel.specializationsDataList ?? [];
        getDoctorsList(specialationId: specializationsList?.first?.id);
        emit(HomeState.specializationsSuccess(
            specializationResponseModel.specializationsDataList));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationsError(errorHandler));
      },
    );
  }

  void getDoctorsList({required int? specialationId}) {
    List<Doctors?>? doctoesList =
        getDoctorsListBySpecializationId(specialationId);
    if (!doctoesList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctoesList));
    } else {
      emit(HomeState.doctorsError(
          ErrorHandler.handle('No doctors found for this specialization')));
    }
  }

  getDoctorsListBySpecializationId(specialationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specialationId)
        ?.doctorsList;
  }
}
