// For easy and so that the example dose not get complated with
// files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/widgets/body.dart';

class RossBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IRossRepository>(() => RossRepository());
    Get.lazyPut(() => RossController(rossRepository: Get.find()));
  }
}

// ignore: one_member_abstracts
abstract class IRossRepository {
  Future<dynamic> getPageName();
}

class RossRepository implements IRossRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Ross Page');
}

class RossController extends GetxController {
  RossController({this.rossRepository});
  final IRossRepository rossRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    rossRepository.getPageName().then((value) => name.value = value.toString());
  }
}

class RossView extends GetView<RossController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Obx(() => Text(controller.name.value,
              style: TextStyle(
                  color: controller.name.value == 'loading ..'
                      ? Colors.red
                      : Colors.amber)))),
      body: BodyWidget(),
    );
  }
}
