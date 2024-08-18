import 'package:doctorapp/core/networking/api_error_handler.dart';
import 'package:doctorapp/core/networking/api_rusulit.dart';
import 'package:doctorapp/features/home/data/models/apis/home_api_service.dart';
import 'package:doctorapp/features/home/data/models/specialization_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);
  Future<ApiResult<SpecializationResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
