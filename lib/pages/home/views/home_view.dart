import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get Examples')),
      body: Center(
        child: Wrap(
          children: [
            _getCard('GetPage & GetMiddleware', '/greens'),
            _getCard('GetResponsiveView', '/responsive'),
            _getCard('Counter App Example', '/counter'),
          ],
        ),
      ),
    );
  }

  Widget _getCard(String name, String route) => Card(
    margin: EdgeInsets.all(15),
    child: InkWell(
      onTap: () => Get.toNamed(route),
      child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(name, style: TextStyle(fontSize: 25)),
          ),
    ),
  );
}
