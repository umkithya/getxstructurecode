abstract class IAuthRepository {
  Future<String> onSubmitLogin(String username, String password);
}
