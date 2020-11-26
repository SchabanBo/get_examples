// For easy and so that the example dose not get complated with files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/shared/widgets/body.dart';

class RachelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IRachelRepository>(() => RachelRepository());
    Get.lazyPut(() => RachelController(rachelRepository: Get.find()));
  }
}

abstract class IRachelRepository {
  Future<dynamic> getPageName();
}

class RachelRepository implements IRachelRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Rachel Page');
}

class RachelController extends GetxController {
  RachelController({this.rachelRepository});
  final IRachelRepository rachelRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    rachelRepository.getPageName().then((value) => name.value = value);
  }
}

class RachelView extends GetView<RachelController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text(controller.name.value))),
      body: BodyWidget(),
    );
  }
}
