import 'package:app_moquegua_v2/logAuth/auth/domain/domain.dart';
import 'package:app_moquegua_v2/logAuth/auth/infraestructure/infraestructure.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource dataSource;

  AuthRepositoryImpl({AuthDataSource? dataSource})
      : dataSource = dataSource ?? AuthDataSourceImpl();

  @override
  Future<User> checkAuthStatus(String token) {
    return dataSource.checkAuthStatus(token);
  }

  @override
  Future<User> login(String email, String password) {
    return dataSource.login(email, password);
  }

  @override
  Future<User> register(String email, String password, String dni) {
    return dataSource.register(email, password, dni);
  }
}
