import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get Examples')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
              child: Text('GetPage & GetMiddleware',
                  style: TextStyle(fontSize: 18)),
              onPressed: () => Get.toNamed('/greens'),
            ),
            RaisedButton(
              child: Text('GetResponsiveView', style: TextStyle(fontSize: 18)),
              onPressed: () => Get.toNamed('/responsive'),
            ),
          ],
        ),
      ),
    );
  }
}
