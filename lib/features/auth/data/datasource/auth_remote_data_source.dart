import '../models/login_request.dart';
import '../models/login_response.dart';

abstract interface class AuthRemoteDataSource {
  Future<LoginResponse> login(
    LoginRequest request,
  );
}
