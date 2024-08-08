import 'package:doctorapp/core/networking/api_error_handler.dart';
import 'package:doctorapp/core/networking/api_rusulit.dart';
import 'package:doctorapp/core/networking/api_service.dart';
import 'package:doctorapp/features/sign_up/data/models/sign_up_response.dart';

import '../models/sign_up_request_body.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
