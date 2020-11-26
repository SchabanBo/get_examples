import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/shared/controllers/path_controller.dart';
import 'package:get_page_example/shared/widgets/tree.dart';

class BodyWidget extends StatelessWidget {
  final pathCon = Get.find<PathController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          getContainer(
              'Current Route',
              Text(
                Get.routing.current,
                style: TextStyle(fontSize: 25),
              )),
          const SizedBox(height: 25),
          getContainer(
              'New Route',
              Column(
                children: [
                  Obx(() => Text(
                        pathCon.path,
                        style: TextStyle(fontSize: 25),
                      )),
                  const SizedBox(height: 10),
                  RaisedButton(
                    child: Text('Go'),
                    color: Colors.amber,
                    onPressed: () => pathCon.go(),
                  )
                ],
              )),
          const SizedBox(height: 25),
          Expanded(child: FamilyTree()),
        ],
      ),
    );
  }

  Widget getContainer(String title, Widget child) => Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.amber),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(title, style: TextStyle(fontSize: 18)),
          child,
        ],
      ));
}
