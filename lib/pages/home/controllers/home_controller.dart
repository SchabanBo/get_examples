import 'package:get/get.dart';
import 'package:get_page_example/pages/home/domain/adapters/repository_adapter.dart';

class HomeController extends GetxController {
  HomeController({this.homeRepository});
  final IHomeRepository homeRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    homeRepository.getPageName().then((value) => name.value = value);
  }
}
