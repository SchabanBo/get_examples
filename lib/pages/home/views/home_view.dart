import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/home/controllers/home_controller.dart';
import 'package:get_page_example/routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get Examples')),
      body: Center(
        child: Wrap(
          children: [
            for (var page in AppPages.routes) _getCard(page.title, page.name)
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
