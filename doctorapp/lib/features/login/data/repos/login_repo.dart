import 'package:doctorapp/core/networking/api_error_handler.dart';
import 'package:doctorapp/core/networking/api_rusulit.dart';
import 'package:doctorapp/core/networking/api_service.dart';
import 'package:doctorapp/features/login/data/models/login_request_body.dart';
import 'package:doctorapp/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody LoginRequestBody) async {
    try {
      final response = await _apiService.login(LoginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
