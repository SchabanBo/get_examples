import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/routes/app_pages.dart';
import 'package:get_page_example/shared/auth/auth_service.dart';
import 'package:get_page_example/shared/controllers/path_controller.dart';
import 'package:get_page_example/shared/logger/logger_utils.dart';

void main() {
  Get.put(AuthController(), permanent: true);
  Get.put(PathController(), permanent: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      logWriterCallback: Logger.write,
      initialRoute: AppPages.init,
      getPages: AppPages.routes,
      theme: ThemeData.dark(),
    );
  }
}
