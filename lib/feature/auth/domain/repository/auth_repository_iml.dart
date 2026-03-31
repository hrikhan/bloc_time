import 'package:bloc_concept/feature/auth/data/datasources/auth_remote_data_sources.dart';
import 'package:bloc_concept/feature/auth/domain/repository/auth_repository.dart';

import '../../domain/entities/user.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<User> login(String email, String password) async {
    return await remoteDataSource.login(email, password);
  }
}
