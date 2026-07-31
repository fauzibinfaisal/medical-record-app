import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isLoading,
    @Default(false) bool obscurePassword,
    String? errorMessage,
    @Default(false) bool loginSuccess,
  }) = _LoginState;

  const LoginState._();

  bool get isFormValid {
    return email.trim().isNotEmpty && password.trim().isNotEmpty;
  }
}
