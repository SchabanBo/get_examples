// This Class is just a template for Home Page to use with athoer pages

// For easy and so that the example dose not get complated with
// files and directory this file will represent all page class
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/shared/widgets/body.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHomeRepository>(() => HomeRepository());
    Get.lazyPut(() => HomeController(homeRepository: Get.find()));
  }
}
// ignore: one_member_abstracts
abstract class IHomeRepository {
   Future<dynamic> getPageName();
}


class HomeRepository implements IHomeRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Home Page');
}

class HomeController extends GetxController {
  HomeController({this.homeRepository});
  final IHomeRepository homeRepository;

  final name = 'loading ..'.obs;
  @override
  void onInit() {
    super.onInit();
    homeRepository.getPageName().then((value) => name.value = value.toString());
  }
}



class HomeView extends GetView<HomeController> {
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
