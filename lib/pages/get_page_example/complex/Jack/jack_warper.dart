// For easy and so that the example dose not get complated with
// files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/widgets/body.dart';

class JackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IJackRepository>(() => JackRepository());
    Get.lazyPut(() => JackController(jackRepository: Get.find()));
  }
}

// ignore: one_member_abstracts
abstract class IJackRepository {
  Future<dynamic> getPageName();
}

class JackRepository implements IJackRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Jack Page');
}

class JackController extends GetxController {
  JackController({this.jackRepository});
  final IJackRepository jackRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    jackRepository.getPageName().then((value) => name.value = value.toString());
  }
}

class JackView extends GetView<JackController> {
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
