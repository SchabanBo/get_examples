import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/shared/auth/auth_service.dart';
import 'package:get_page_example/shared/auth/page_auth.dart';
import 'package:get_page_example/shared/controllers/path_controller.dart';
import 'package:get_page_example/routes/app_pages.dart';

class FamilyTree extends StatelessWidget {
  final auth = Get.find<AuthService>();
  final pathCon = Get.find<PathController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [home(), gen0(), gen1(), gen2()],
    );
  }

  Widget home() => Row(children: [getPerson('Home', -1, flex: 7)]);

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
    auth.auth.add(PageAuth(name));
    return Expanded(
      flex: flex,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    var path = isNone ? '' : name.nameToRoute();
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
              isNone
                  ? Container()
                  : ObxValue<RxBool>(
                      (v) => Checkbox(
                            activeColor: Colors.amber,
                            value: v.value,
                            onChanged: (va) {
                              v.value = va;
                              auth.auth
                                  .firstWhere((element) => element.name == name)
                                  .isAuthed = va;
                            },
                          ),
                      auth.auth
                          .firstWhere((element) => element.name == name)
                          .isAuthed
                          .obs)
            ],
          ),
        ),
      ),
    );
  }
}
