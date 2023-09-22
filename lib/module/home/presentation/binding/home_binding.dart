import 'package:get/get.dart';

import '../../data/home_api_provider.dart';
import '../../data/home_repository.dart';
import '../../domain/adapters/repository_adapter.dart';
import '../controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHomeProvider>(() => HomeProvider());
    Get.lazyPut<IHomeRepository>(() => HomeRepository(provider: Get.find()));
    Get.lazyPut(() => HomeController(homeRepository: Get.find()));
  }
  // @override
  // List<Bind> dependencies() {
  //   return [
  //     Bind.lazyPut<IHomeProvider>(() => HomeProvider()),
  //     Bind.lazyPut<IHomeRepository>(() => HomeRepository(provider: Get.find())),
  //     Bind.lazyPut(() => HomeController(homeRepository: Get.find())),
  //   ];
  // }
}
