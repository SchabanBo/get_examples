import 'package:get/get.dart';

class PathController extends GetxController {
  final gen0 = ''.obs;
  final gen1 = ''.obs;
  final gen2 = ''.obs;

  String get path {
    if (gen0.value.isEmpty) {
      return '/home';
    }
    final g0 = (gen0.value == '/jack' || gen0.value == '/judy')
        ? '/gellers${gen0.value}'
        : '/greens${gen0.value}';
    if (gen1.value.isEmpty) {
      return '/home$g0';
    }
    if (gen2.value.isEmpty) {
      return '/home$g0${gen1.value}';
    }
    return '/home$g0${gen1.value}${gen2.value}';
  }

  void go() => Get.offNamed(path);
}
