import 'package:app_moquegua_v2/logAuth/auth/infraestructure/infraestructure.dart';
import 'package:dio/dio.dart';

import 'package:app_moquegua_v2/logAuth/auth/domain/domain.dart';
import '../../../../config/config.dart';

class AuthDataSourceImpl extends AuthDataSource {
  final dio = Dio(BaseOptions(baseUrl: Enviroment.apiUrl));
  @override
  Future<User> checkAuthStatus(String token) {
    // TODO: implement checkAuthStatus
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) async {
    try {
      final response =
          await dio.post('login', data: {'email': email, 'password': password});
      final user = UserMapper.userJsonToEntity(response.data);
      return user;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw CustomError('Revisar conexión a internet');
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<User> register(String email, String password, String dni) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
