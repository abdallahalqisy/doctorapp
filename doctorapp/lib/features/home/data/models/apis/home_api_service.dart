import 'package:dio/dio.dart';
import 'package:doctorapp/core/networking/api_constants.dart';
import 'package:doctorapp/features/home/data/models/apis/home_api_constants.dart';
import 'package:doctorapp/features/home/data/models/specialization_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(
    Dio dio,
  ) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationResponseModel> getSpecialization();
}
