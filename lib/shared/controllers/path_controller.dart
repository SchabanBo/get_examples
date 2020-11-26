import 'package:get/get.dart';

class PathController extends GetxController {
  final gen0 = ''.obs;
  final gen1 = ''.obs;
  final gen2 = ''.obs;

  String get path {
    if (gen0.value.isEmpty) {
      return '/home';
    }
    if (gen1.value.isEmpty) {
      return '/home${gen0.value}';
    }
    if (gen2.value.isEmpty) {
      return '/home${gen0.value}${gen1.value}';
    }
    return '/home${gen0.value}${gen1.value}${gen2.value}';
  }

  void go() => Get.toNamed(path);
}
