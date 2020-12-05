import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/auth/auth_service.dart';
import 'package:get_page_example/pages/get_page_example/controllers/path_controller.dart';
import 'package:get_page_example/pages/get_page_example/widgets/tree.dart';

class BodyWidget extends StatelessWidget {
  final pathCon = Get.find<PathController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 25),
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
                    onPressed: pathCon.go,
                  )
                ],
              )),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ObxValue<RxBool>(
                  (v) => Checkbox(
                        activeColor: Colors.amber,
                        value: v.value,
                        onChanged: (va) {
                          v.value = va;
                        },
                      ),
                  Get.find<AuthService>().authed),
              const SizedBox(width: 25),
              Text(
                'Is Auth',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          const SizedBox(height: 50),
          RaisedButton(
              child: Text('Back Home'), onPressed: () => Get.offNamed('/home')),
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
