// For easy and so that the example dose not get complated with
// files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/widgets/body.dart';

class LeonardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ILeonardRepository>(() => LeonardRepository());
    Get.lazyPut(() => LeonardController(leonardRepository: Get.find()));
  }
}

// ignore: one_member_abstracts
abstract class ILeonardRepository {
  Future<dynamic> getPageName();
}

class LeonardRepository implements ILeonardRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Leonard Page');
}

class LeonardController extends GetxController {
  LeonardController({this.leonardRepository});
  final ILeonardRepository leonardRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    leonardRepository
        .getPageName()
        .then((value) => name.value = value.toString());
  }
}

class LeonardView extends GetView<LeonardController> {
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
