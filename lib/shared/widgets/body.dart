import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/shared/widgets/tree.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            Get.routing.current,
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(height: 50),
          Tree(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
