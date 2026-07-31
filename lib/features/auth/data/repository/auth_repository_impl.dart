import '../../../../core/error/exception_mapper.dart';
import '../../../../core/error/result.dart';
import '../../domain/repository/auth_repository.dart';
import '../datasource/auth_remote_data_source.dart';
import '../models/login_request.dart';
import '../models/login_response.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final AuthRemoteDataSource _remoteDataSource;

  @override
  Future<Result<LoginResponse>> login(
    LoginRequest request,
  ) async {
    try {
      final LoginResponse response = await _remoteDataSource.login(
        request,
      );

      return Success<LoginResponse>(
        response,
      );
    } catch (error) {
      return Error<LoginResponse>(
        ExceptionMapper.map(error),
      );
    }
  }
}
