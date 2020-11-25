import 'package:get/get.dart';
import 'package:get_page_example/pages/home/controllers/home_controller.dart';
import 'package:get_page_example/pages/home/domain/adapters/repository_adapter.dart';
import 'package:get_page_example/pages/home/domain/data/home_repository.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHomeRepository>(() => HomeRepository());
    Get.lazyPut(() => HomeController(homeRepository: Get.find()));
  }
}
