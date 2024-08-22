import 'package:bloc/bloc.dart';
import 'package:doctorapp/core/helpers/constants.dart';
import 'package:doctorapp/core/helpers/shared_pref_helper.dart';
import 'package:doctorapp/core/networking/dio_factory.dart';
import 'package:doctorapp/features/login/data/models/login_request_body.dart';
import 'package:doctorapp/features/login/data/repos/login_repo.dart';
import 'package:doctorapp/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    Future<void> saveUserToken(String token) async {
      await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
      DioFactory.setTokenAfterLogin(token);
    }

    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.userData?.token ?? '');
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
