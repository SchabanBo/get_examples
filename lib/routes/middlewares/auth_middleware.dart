import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_page_example/shared/auth/auth_service.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings redirect() {
    final isAuthed = Get.find<AuthService>().authed.value;
    print('Is authed: $isAuthed');
    return isAuthed ? null : RouteSettings(name: '/login');
  }

  
}
