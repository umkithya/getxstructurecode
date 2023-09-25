import 'package:get/get.dart';
import 'package:prohecomapp/core/auth/data/auth_api_provider.dart';
import 'package:prohecomapp/core/auth/data/auth_repository.dart';
import 'package:prohecomapp/core/auth/domain/adapters/auth_repository_adapter.dart';
import 'package:prohecomapp/core/auth/presentation/controller/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IAuthProvider>(() => AuthProvider());
    Get.lazyPut<IAuthRepository>(() => AuthRepository(provider: Get.find()));
    Get.lazyPut(() => AuthController(authRepository: Get.find()));
  }
}
