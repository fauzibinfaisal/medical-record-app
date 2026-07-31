import '../../../../core/error/result.dart';
import '../../data/models/login_request.dart';
import '../../data/models/login_response.dart';
import '../repository/auth_repository.dart';

class LoginUseCase {
  const LoginUseCase({
    required AuthRepository repository,
  }) : _repository = repository;

  final AuthRepository _repository;

  Future<Result<LoginResponse>> call({
    required String email,
    required String password,
  }) {
    return _repository.login(
      LoginRequest(
        email: email,
        password: password,
      ),
    );
  }
}
