import 'package:bloc_concept/feature/auth/domain/repository/auth_repository.dart';

import '../entities/user.dart';

class LoginUser {
  final AuthRepository repository;
  LoginUser(this.repository);

  Future<User> call(String email, String password) async {
    return await repository.login(email, password);
  }
}
