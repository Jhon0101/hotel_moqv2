import 'package:app_moquegua_v2/logAuth/auth/domain/entities/user.dart';

abstract class AuthDataSource {
  Future<User> login(String email, String password);
  Future<User> register(String email, String password, String dni);
  Future<User> checkAuthStatus(String token);
}
