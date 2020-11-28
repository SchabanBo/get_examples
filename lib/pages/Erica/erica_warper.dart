// For easy and so that the example dose not get complated with
// files and directory this file will represent all page class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/shared/widgets/body.dart';

class EricaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IEricaRepository>(() => EricaRepository());
    Get.lazyPut(() => EricaController(ericaRepository: Get.find()));
  }
}

// ignore: one_member_abstracts
abstract class IEricaRepository {
  Future<dynamic> getPageName();
}

class EricaRepository implements IEricaRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Erica Page');
}

class EricaController extends GetxController {
  EricaController({this.ericaRepository});
  final IEricaRepository ericaRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    ericaRepository
        .getPageName()
        .then((value) => name.value = value.toString());
  }
}

class EricaView extends GetView<EricaController> {
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
