// For easy and so that the example dose not get complated with files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GellersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IGellersRepository>(() => GellersRepository());
    Get.lazyPut(() => GellersController(gellersRepository: Get.find()));
  }
}

abstract class IGellersRepository {
  Future<String> getPageName();
}

class GellersRepository implements IGellersRepository {
  @override
  Future<String> getPageName() => 2.delay(() => 'Gellers Page');
}

class GellersController extends GetxController {
  GellersController({this.gellersRepository});
  final IGellersRepository gellersRepository;

  final name = ''.obs;
  @override
  void onInit() {
    super.onInit();
    gellersRepository.getPageName().then((value) => name.value = value);
  }
}

class GellersView extends GetView<GellersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text(controller.name.value))),
      body: Container(),
    );
  }
}
