import 'package:get/get.dart';
import 'package:get_page_example/pages/counter_example/counter_example.dart';
import 'package:get_page_example/pages/get_page_example/routes.dart';

import 'package:get_page_example/pages/home/bindings/home_binding.dart';
import 'package:get_page_example/pages/home/views/home_view.dart';
import 'package:get_page_example/pages/login/login_view.dart';
import 'package:get_page_example/pages/responsive_example/responsive_view.dart';
part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static String init = Routes.Home.nameToRoute();

  static final routes = [
    GetPage(
        name: Routes.Home.nameToRoute(),
        page: () => HomeView(),
        binding: HomeBinding()),
    GetPageExample.theGreens,
    GetPageExample.theGellers,
    GetPage(name: '/login', page: () => LoginView()),
    GetPage(name: '/responsive', page: () => ResponsiveView()),
    GetPage(
        name: '/counter', page: () => CounterView(), binding: CounterBinding()),
  ];
}
