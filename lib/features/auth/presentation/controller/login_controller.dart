import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/usecases/login_use_case.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/error/result.dart';
import '../../data/models/login_response.dart';
import 'login_state.dart';

final loginControllerProvider = NotifierProvider<LoginController, LoginState>(
  LoginController.new,
);

class LoginController extends Notifier<LoginState> {
  late final LoginUseCase _loginUseCase;

  @override
  LoginState build() {
    _loginUseCase = sl<LoginUseCase>();

    return const LoginState(
      obscurePassword: true,
    );
  }

  void emailChanged(String value) {
    state = state.copyWith(
      email: value,
      errorMessage: null,
    );
  }

  void passwordChanged(String value) {
    state = state.copyWith(
      password: value,
      errorMessage: null,
    );
  }

  void togglePasswordVisibility() {
    state = state.copyWith(
      obscurePassword: !state.obscurePassword,
    );
  }

  Future<void> login() async {
    if (!state.isFormValid) {
      state = state.copyWith(
        errorMessage: 'Please fill all fields.',
      );
      return;
    }

    state = state.copyWith(
      isLoading: true,
      errorMessage: null,
      loginSuccess: false,
    );

    final Result<LoginResponse> result = await _loginUseCase(
      email: state.email,
      password: state.password,
    );

    result.when(
      success: (LoginResponse response) {
        state = state.copyWith(
          isLoading: false,
          loginSuccess: true,
        );
      },
      failure: (failure) {
        state = state.copyWith(
          isLoading: false,
          loginSuccess: false,
          errorMessage: failure.message,
        );
      },
    );
  }

  void clearError() {
    state = state.copyWith(
      errorMessage: null,
    );
  }

  void reset() {
    state = const LoginState(
      obscurePassword: true,
    );
  }
}
