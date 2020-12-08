// For easy and so that the example dose not get complated with
// files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/widgets/body.dart';

class GellersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IGellersRepository>(() => GellersRepository());
    Get.lazyPut(() => GellersController(gellersRepository: Get.find()));
  }
}

// ignore: one_member_abstracts
abstract class IGellersRepository {
  Future<dynamic> getPageName();
}

class GellersRepository implements IGellersRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Gellers Page');
}

class GellersController extends GetxController {
  GellersController({this.gellersRepository});
  final IGellersRepository gellersRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    gellersRepository
        .getPageName()
        .then((value) => name.value = value.toString());
  }
}

class GellersView extends GetView<GellersController> {
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
