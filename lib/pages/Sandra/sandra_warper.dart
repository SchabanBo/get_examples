// For easy and so that the example dose not get complated with files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/shared/widgets/body.dart';

class SandraBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ISandraRepository>(() => SandraRepository());
    Get.lazyPut(() => SandraController(sandraRepository: Get.find()));
  }
}

abstract class ISandraRepository {
  Future<dynamic> getPageName();
}

class SandraRepository implements ISandraRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Sandra Page');
}

class SandraController extends GetxController {
  SandraController({this.sandraRepository});
  final ISandraRepository sandraRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    sandraRepository.getPageName().then((value) => name.value = value);
  }
}

class SandraView extends GetView<SandraController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text(controller.name.value))),
      body: BodyWidget(),
    );
  }
}
