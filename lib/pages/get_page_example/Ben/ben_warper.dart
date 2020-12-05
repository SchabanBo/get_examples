// For easy and so that the example dose not get complated with
// files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/widgets/body.dart';

class BenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IBenRepository>(() => BenRepository());
    Get.lazyPut(() => BenController(benRepository: Get.find()));
  }
}

// ignore: one_member_abstracts
abstract class IBenRepository {
  Future<dynamic> getPageName();
}

class BenRepository implements IBenRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Bin Page');
}

class BenController extends GetxController {
  BenController({this.benRepository});
  final IBenRepository benRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    benRepository.getPageName().then((value) => name.value = value.toString());
  }
}

class BenView extends GetView<BenController> {
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
