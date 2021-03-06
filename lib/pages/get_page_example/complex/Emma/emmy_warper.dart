// For easy and so that the example dose not get complated with
// files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/widgets/body.dart';

class EmmaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IEmmaRepository>(() => EmmaRepository());
    Get.lazyPut(() => EmmaController(emmaRepository: Get.find()));
  }
}

// ignore: one_member_abstracts
abstract class IEmmaRepository {
  Future<dynamic> getPageName();
}

class EmmaRepository implements IEmmaRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Emma Page');
}

class EmmaController extends GetxController {
  EmmaController({this.emmaRepository});
  final IEmmaRepository emmaRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    emmaRepository.getPageName().then((value) => name.value = value.toString());
  }
}

class EmmaView extends GetView<EmmaController> {
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
