import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

class ResponsiveController extends GetxController {}

class ResponsiveView extends GetResponsiveView<ResponsiveController> {
  @override
  Widget builder() {
    return Scaffold(
        appBar: AppBar(title: Text('ResponsivePage')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _getIcon(Icons.desktop_windows, ScreenType.Desktop),
                _getIcon(Icons.tablet, ScreenType.Tablet),
                _getIcon(Icons.phone, ScreenType.Phone),
                _getIcon(Icons.watch, ScreenType.Watch),
              ],
            ),
            ResponsiveViewCases(),
            ResponsiveViewCases1(),
            Text(screen.screenType.toString(), style: TextStyle(fontSize: 35))
          ],
        ));
  }

  Widget _getIcon(IconData icon, ScreenType type) {
    return AnimatedContainer(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: screen.screenType == type ? Colors.amber : Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      duration: 1.seconds,
      child: Icon(
        icon,
        size: 75,
        color: Colors.indigo,
      ),
    );
  }
}

class ResponsiveViewCases extends GetResponsiveView<ResponsiveController> {
  ResponsiveViewCases() : super(alwaysUseBuilder: false);

  @override
  Widget mobile() => Icon(Icons.phone, size: 75);

  @override
  Widget desktop() => Container(
      child: Icon(Icons.desktop_windows, size: 75),
      color: screen.isTablet ? Colors.red : Colors.indigo);
}

class ResponsiveViewCases1 extends GetResponsiveView<ResponsiveController> {
  @override
  Widget builder() => screen.isDesktop
      ? Container(
          child: Icon(Icons.desktop_windows, size: 75),
          color: screen.isTablet ? Colors.red : Colors.indigo)
      : screen.isPhone
          ? Icon(Icons.phone, size: 75)
          : Icon(Icons.info, size: 75);
}
