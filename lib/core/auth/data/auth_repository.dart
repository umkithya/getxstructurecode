import 'package:getxstructurecode/core/auth/data/auth_api_provider.dart';
import 'package:getxstructurecode/core/auth/domain/adapters/auth_repository_adapter.dart';
import 'package:getxstructurecode/network/end_point.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository({required this.provider});
  final IAuthProvider provider;

  @override
  Future<String> onSubmitLogin(String username, String password) async {
    try {
      String data = await provider.submitLogin(
        Endpoints.login,
        username: username,
        password: password,
      );
      print("Msg:$data");
      return data;
    } catch (e) {
      print("Msg e:$e");
      rethrow;
      // return [];
    }
  }
}
