import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleNavigationBinding1 implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SimpleNavigationController1>(
        () => SimpleNavigationController1());
  }
}

class SimpleNavigationController1 extends GetxController {
  final text = ''.obs;
}

class SimpleNavigationView1 extends GetView<SimpleNavigationController1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleNavigation1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(() => Text(
                  'The result is ${controller.text.value}',
                  style: TextStyle(fontSize: 22),
                )),
            RaisedButton(
                child: Text('To Page 2'),
                onPressed: () async => controller.text.value =
                    (await Get.toNamed('/simple-navigation/2')).toString()),
          ],
        ),
      ),
    );
  }
}

class SimpleNavigationBinding2 implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SimpleNavigationController2>(
        () => SimpleNavigationController2());
  }
}

class SimpleNavigationController2 extends GetxController {
  final text = ''.obs;
}

class SimpleNavigationView2 extends GetView<SimpleNavigationController2> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleNavigation2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(() => Text(
                  '${controller.text.value}',
                  style: TextStyle(fontSize: 22),
                )),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: textController,
                onChanged: (v) => controller.text.value = v,
              ),
            ),
            RaisedButton(
                child: Text('Back To Page 1'),
                onPressed: () => Get.back(result: controller.text.value)),
          ],
        ),
      ),
    );
  }
}
