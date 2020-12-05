import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(() => CounterController());
  }
}

class CounterController extends GetxController {
  final count = 0.obs;
  void increment() => count.value++;
}

class CounterView extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CounterPage')),
        body: Center(
            child: Obx(() => Text(controller.count.toString(),
                style: TextStyle(color: Colors.indigo, fontSize: 50)))),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: controller.increment));
  }
}
