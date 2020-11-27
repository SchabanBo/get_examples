// For easy and so that the example dose not get complated with files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/shared/widgets/body.dart';

class JudyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IJudyRepository>(() => JudyRepository());
    Get.lazyPut(() => JudyController(judyRepository: Get.find()));
  }
}

abstract class IJudyRepository {
  Future<dynamic> getPageName();
}

class JudyRepository implements IJudyRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Judy Page');
}

class JudyController extends GetxController {
  JudyController({this.judyRepository});
  final IJudyRepository judyRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    judyRepository.getPageName().then((value) => name.value = value);
  }
}

class JudyView extends GetView<JudyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text(controller.name.value,
              style: TextStyle(
                  color: controller.name.value == 'loading ..'
                      ? Colors.red
                      : Colors.amber)))),
      body: BodyWidget(),
    );
  }
}
