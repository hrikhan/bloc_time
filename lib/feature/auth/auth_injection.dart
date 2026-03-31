import 'package:bloc_concept/feature/auth/data/datasources/auth_remote_data_sources.dart';
import 'package:bloc_concept/feature/auth/domain/repository/auth_repository.dart';
import 'package:bloc_concept/feature/auth/domain/repository/auth_repository_iml.dart';
import 'package:bloc_concept/feature/auth/domain/use_cases/login_user.dart';
import 'package:get_it/get_it.dart';

import 'presentation/bloc/auth_bloc.dart';

class AuthInjection {
  static Future<void> init(GetIt sl) async {
    // Bloc
    sl.registerFactory(() => AuthBloc(sl()));

    // UseCase
    sl.registerLazySingleton(() => LoginUser(sl()));

    // Repository
    sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));

    // Data source
    sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(),
    );
  }
}
