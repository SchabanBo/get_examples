import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.routing.current + ' Page Not Found', style: TextStyle(fontSize: 30)),
            const SizedBox(height: 25),
            RaisedButton(
              child: Text('Go To Home', style: TextStyle(fontSize: 30)),
              color: Colors.amber,
              onPressed: () => Get.offNamed('/home'),
            )
          ],
        ),
      ),
    );
  }
}
