abstract class IAuthRepository {
  Future<bool> onSubmitLogin(String username, String password);
}
