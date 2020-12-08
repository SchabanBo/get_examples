import 'package:get/get.dart';
import 'package:get_page_example/pages/counter_example/counter_example.dart';
import 'package:get_page_example/pages/get_page_example/routes.dart';

import 'package:get_page_example/pages/home/bindings/home_binding.dart';
import 'package:get_page_example/pages/home/views/home_view.dart';
import 'package:get_page_example/pages/responsive_example/responsive_view.dart';
import 'package:get_page_example/pages/simple_navigation_example/simple_navigation.dart';
part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static String init = Routes.Home.nameToRoute();

  static final routes = [
    GetPage(
        name: Routes.Home.nameToRoute(),
        page: () => HomeView(),
        title: 'Home',
        binding: HomeBinding()),
    GetPageExample.getPageExample,
    //GetPage(name: '/responsive',title: 'Get Responsive View', page: () => ResponsiveView()),
    GetPage(
        name: '/counter',
        page: () => CounterView(),
        title: 'Counter App',
        binding: CounterBinding()),
    GetPage(
        name: '/simple-navigation',
        title: 'Simple Navigation',
        page: () => SimpleNavigationView1(),
        binding: SimpleNavigationBinding1(),
        children: [
          GetPage(
              name: '/2',
              page: () => SimpleNavigationView2(),
              binding: SimpleNavigationBinding2())
        ])
  ];
}
