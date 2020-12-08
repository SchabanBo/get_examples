import 'package:get/get.dart';

class PathController extends GetxController {
  final gen0 = ''.obs;
  final gen1 = ''.obs;
  final gen2 = ''.obs;

  String get path {
    if (gen0.value.isEmpty) {
      return '/greens';
    }
    final g0 = (gen0.value == '/jack' || gen0.value == '/judy')
        ? '/getPage/gellers${gen0.value}'
        : '/getPage/greens${gen0.value}';
    if (gen1.value.isEmpty) {
      return '$g0';
    }
    if (gen2.value.isEmpty) {
      return '/getPage$g0${gen1.value}';
    }
    return '/getPage$g0${gen1.value}${gen2.value}';
  }

  void go() => Get.offNamed(path);
}
