// For easy and so that the example dose not get complated with
// files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/widgets/body.dart';

class GreensBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IGreensRepository>(() => GreensRepository());
    Get.lazyPut(() => GreensController(greensRepository: Get.find()));
  }
}

// ignore: one_member_abstracts
abstract class IGreensRepository {
  Future<dynamic> getPageName();
}

class GreensRepository implements IGreensRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Greens Page');
}

class GreensController extends GetxController {
  GreensController({this.greensRepository});
  final IGreensRepository greensRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    greensRepository
        .getPageName()
        .then((value) => name.value = value.toString());
  }
}

class GreensView extends GetView<GreensController> {
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
