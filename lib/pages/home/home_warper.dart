// This Class is just a template for Home Page to use with athoer pages

// For easy and so that the example dose not get complated with files and directory this file will represent all page class
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHomeRepository>(() => HomeRepository());
    Get.lazyPut(() => HomeController(homeRepository: Get.find()));
  }
}
abstract class IHomeRepository {
   Future<String> getPageName();
}


class HomeRepository implements IHomeRepository {
  @override
  Future<String> getPageName() => 2.delay(() => 'Home Page');
}

class HomeController extends GetxController {
  HomeController({this.homeRepository});
  final IHomeRepository homeRepository;

  final name = ''.obs;
  @override
  void onInit() {
    super.onInit();
    homeRepository.getPageName().then((value) => name.value = value);
  }
}



class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text(controller.name.value))),
      body: Container(),
    );
  }
}
