// For easy and so that the example dose not get complated with files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/shared/widgets/body.dart';

class MonicaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IMonicaRepository>(() => MonicaRepository());
    Get.lazyPut(() => MonicaController(monicaRepository: Get.find()));
  }
}

abstract class IMonicaRepository {
  Future<dynamic> getPageName();
}

class MonicaRepository implements IMonicaRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Monica Page');
}

class MonicaController extends GetxController {
  MonicaController({this.monicaRepository});
  final IMonicaRepository monicaRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    monicaRepository.getPageName().then((value) => name.value = value);
  }
}

class MonicaView extends GetView<MonicaController> {
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
