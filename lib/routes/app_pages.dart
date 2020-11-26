import 'package:get/get.dart';
import 'package:get_page_example/pages/home/bindings/home_binding.dart';
import 'package:get_page_example/pages/home/views/home_view.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static String init = Routes.HOME.nameToRoute();

  static final routes = [
    GetPage(name: Routes.HOME.nameToRoute(), page: () => HomeView(), binding: HomeBinding()),
  ];
}
