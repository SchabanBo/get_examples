import 'package:get/get.dart';

class PathController extends GetxController {
  final gen0 = ''.obs;
  final gen1 = ''.obs;
  final gen2 = ''.obs;

  String path() {
    if (gen0.value.isEmpty) {
      return '/Home';
    }
    if (gen1.value.isEmpty) {
      return '/Home${gen0.value}';
    }
    if (gen2.value.isEmpty) {
      return '/Home${gen0.value}${gen1.value}';
    }
    return '/Home${gen0.value}${gen1.value}/${gen2.value}';
  }

  bool isValidPath() {
    if (gen2.value.isNotEmpty) {
      return gen0.value.isNotEmpty && gen1.value.isNotEmpty;
    }
    if (gen1.value.isNotEmpty) {
      return gen0.value.isNotEmpty;
    }
    return gen0.value.isNotEmpty;
  }

  void go() => Get.toNamed(path());
}
