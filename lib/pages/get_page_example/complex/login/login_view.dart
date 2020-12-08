import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_page_example/pages/get_page_example/complex/auth/auth_service.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You are not authorized to get this content you need to login',
                style: TextStyle(fontSize: 30)),
            const SizedBox(height: 25),
            RaisedButton(
              child: Text('Set me authed and Go To Home',
                  style: TextStyle(fontSize: 30)),
              color: Colors.amber,
              onPressed: () {
                Get.find<AuthService>().authed.value = true;
                Get.offNamed('/home');
              },
            )
          ],
        ),
      ),
    );
  }
}
