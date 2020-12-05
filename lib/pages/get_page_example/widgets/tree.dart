import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/auth/auth_service.dart';
import 'package:get_page_example/pages/get_page_example/controllers/path_controller.dart';
import 'package:get_page_example/routes/app_pages.dart';

class FamilyTree extends StatelessWidget {
  final auth = Get.find<AuthService>();
  final pathCon = Get.find<PathController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [gen0(), gen1(), gen2()],
    );
  }


  Widget gen0() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getPerson('None', 0),
          Flexible(
            flex: 4,
            child: Card(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              getPerson('Judy', 0),
              getPerson('Jack', 0),
            ])),
          ),
          Flexible(
            flex: 3,
            child: Card(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              getPerson('Sandra', 0),
              getPerson('Leonardo', 0),
            ])),
          ),
        ],
      );

  Widget gen1() => Row(
        children: [
          getPerson('None', 1),
          getPerson('Monica', 1, flex: 2),
          getPerson('Ross', 1, flex: 2),
          getPerson('Rachel', 1),
          getPerson('Amy', 1),
          getPerson('Jill', 1),
        ],
      );

  Widget gen2() => Row(
        children: [
          getPerson('None', 2),
          getPerson('Jackj', 2),
          getPerson('Erica', 2),
          getPerson('Bin', 2),
          getPerson('Emma', 2, flex: 2),
          Spacer(flex: 2)
        ],
      );

  Widget getPerson(String name, int gen, {int flex = 1}) {
    final isNone = name == 'None';
    final route = name.nameToRoute();
    return Expanded(
      flex: flex,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlatButton(
            child: Text(
              name,
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {
              final path = isNone ? '' : route;
              switch (gen) {
                case 0:
                  pathCon.gen0.value = path;
                  break;
                case 1:
                  pathCon.gen1.value = path;
                  break;
                case 2:
                  pathCon.gen2.value = path;
                  break;
                default:
              }
            },
          ),
        ),
      ),
    );
  }
}
