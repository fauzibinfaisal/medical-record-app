import '../../../../core/error/result.dart';
import '../../data/models/login_request.dart';
import '../../data/models/login_response.dart';

abstract interface class AuthRepository {
  Future<Result<LoginResponse>> login(
    LoginRequest request,
  );
}
