import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/data/datasource/auth_remote_data_source.dart';
import '../../features/auth/data/datasource/auth_remote_data_source_impl.dart';
import '../../features/auth/data/repository/auth_repository_impl.dart';
import '../../features/auth/domain/repository/auth_repository.dart';
import '../../features/auth/domain/usecases/login_use_case.dart';
import '../network/dio_client.dart';
import '../network/interceptors/auth_interceptor.dart';
import '../network/interceptors/logger_interceptor.dart';
import '../storage/shared_preferences_service.dart';
import 'service_locator.dart';

Future<void> configureDependencies() async {
  // Shared Preferences
  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );

  sl.registerLazySingleton<SharedPreferencesService>(
    () => SharedPreferencesService(
      sl<SharedPreferences>(),
    ),
  );

  sl.registerLazySingleton<LoggerInterceptor>(
    () => LoggerInterceptor(),
  );

  sl.registerLazySingleton<AuthInterceptor>(
    () => AuthInterceptor(),
  );

  sl.registerLazySingleton<DioClient>(
    () => DioClient(
      authInterceptor: sl<AuthInterceptor>(),
      loggerInterceptor: sl<LoggerInterceptor>(),
    ),
  );

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
      dioClient: sl<DioClient>(),
    ),
  );

  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl<AuthRemoteDataSource>(),
    ),
  );

  sl.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(
      repository: sl<AuthRepository>(),
    ),
  );
}
