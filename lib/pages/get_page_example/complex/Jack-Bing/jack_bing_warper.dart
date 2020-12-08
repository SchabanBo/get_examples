// For easy and so that the example dose not get complated with
// files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/widgets/body.dart';

class JackBingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IJackBingRepository>(() => JackBingRepository());
    Get.lazyPut(() => JackBingController(jackBingRepository: Get.find()));
  }
}

// ignore: one_member_abstracts
abstract class IJackBingRepository {
  Future<dynamic> getPageName();
}

class JackBingRepository implements IJackBingRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'JackBing Page');
}

class JackBingController extends GetxController {
  JackBingController({this.jackBingRepository});
  final IJackBingRepository jackBingRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    jackBingRepository
        .getPageName()
        .then((value) => name.value = value.toString());
  }
}

class JackBingView extends GetView<JackBingController> {
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
