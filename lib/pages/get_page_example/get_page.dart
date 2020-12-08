import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_page_example/pages/get_page_example/complex/auth/auth_service.dart';
import 'package:get_page_example/pages/get_page_example/controllers/path_controller.dart';
import 'package:get_page_example/pages/get_page_example/routes.dart';

class GetPageExampleBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<AuthService>(() => AuthService());
    // Get.lazyPut<PathController>(() => PathController());
  }
}

class GetPageExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get Examples')),
      body: Center(
        child: Wrap(
          children: [
            Card(
              margin: EdgeInsets.all(15),
              child: InkWell(
                onTap: () => Get.toNamed('/home'),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text('Home', style: TextStyle(fontSize: 25)),
                ),
              ),
            ),
            for (var page in GetPageExample.getPageExample.children)
              _getCard(page.title, page.name),
          ],
        ),
      ),
    );
  }

  Widget _getCard(String name, String route) => Card(
        margin: EdgeInsets.all(15),
        child: InkWell(
          onTap: () => Get.toNamed('/getPage$route'),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(name, style: TextStyle(fontSize: 25)),
          ),
        ),
      );
}
