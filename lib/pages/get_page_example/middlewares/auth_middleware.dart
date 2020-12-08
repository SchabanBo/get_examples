import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/complex/auth/auth_service.dart';

class AuthMiddleware extends GetMiddleware {
  final auth = Get.find<AuthService>();
  @override
  RouteSettings redirect(String route) {
    print('Is authed: ${auth.authed.value}');
    return auth.authed.value ? null : RouteSettings(name: '/login');
  }

  @override
  GetPage onPageCalled(GetPage page) {
    return page.copyWith(
        transition: auth.authed.value ? Transition.fade : Transition.upToDown,
        transitionDuration: 1.seconds);
  }

  @override
  List<Bindings> onBindingsStart(List<Bindings> bindings) {
    if (!auth.authed.value) {
      bindings = <Bindings>[];
    }
    return super.onBindingsStart(bindings);
  }

  @override
  Widget onPageBuilt(Widget page) {
    print(page.runtimeType);
    return page;
  }
}
