// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/simple/get_responsive.dart';

// class ResponsiveController extends GetxController {}

// class ResponsiveView extends GetResponsiveView<ResponsiveController> {
//   @override
//   Widget builder() {
//     return Scaffold(
//         appBar: AppBar(title: Text('ResponsivePage')),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Text('Resize the screen to see the results',
//                 style: TextStyle(fontSize: 35)),
//             _drawLine(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 _getIcon(Icons.desktop_windows, ScreenType.Desktop),
//                 _getIcon(Icons.tablet, ScreenType.Tablet),
//                 _getIcon(Icons.phone, ScreenType.Phone),
//                 _getIcon(Icons.watch, ScreenType.Watch),
//               ],
//             ),
//             Text(screen.screenType.toString(), style: TextStyle(fontSize: 35)),
//             _drawLine(),
//             Text('ResponsiveViewCases', style: TextStyle(fontSize: 35)),
//             _drawLine(),
//             Text('Or you can set specific value depending  on the screnn type',
//                 style: TextStyle(
//                     fontSize: 35,
//                     color: screen.responsiveValue(
//                         desktop: Colors.indigo,
//                         tablet: Colors.yellow,
//                         mobile: Colors.red,
//                         watch: Colors.black))),
//             ResponsiveViewCases(),
//             _drawLine(),
//             Text('ResponsiveViewCases1', style: TextStyle(fontSize: 35)),
//             ResponsiveViewCases1(),
//             _drawLine(),
//             Text('ResponsiveViewCustomSettings',
//                 style: TextStyle(fontSize: 35)),
//             ResponsiveViewCustomSettings(),
//           ],
//         ));
//   }

//   Widget _drawLine() => Container(
//         width: double.infinity,
//         height: 2,
//         color: Colors.indigo,
//       );

//   Widget _getIcon(IconData icon, ScreenType type) {
//     return AnimatedContainer(
//       padding: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: screen.screenType == type ? Colors.amber : Colors.transparent,
//         borderRadius: BorderRadius.circular(5),
//       ),
//       duration: 1.seconds,
//       child: Icon(
//         icon,
//         size: 75,
//         color: Colors.indigo,
//       ),
//     );
//   }
// }

// class ResponsiveViewCases extends GetResponsiveView<ResponsiveController> {
//   ResponsiveViewCases() : super(alwaysUseBuilder: false);

//   @override
//   Widget phone() => Icon(Icons.phone, size: 75);

//   @override
//   Widget desktop() => Container(
//       child: Icon(Icons.desktop_windows, size: 75),
//       color: screen.isTablet ? Colors.red : Colors.indigo);
// }

// class ResponsiveViewCases1 extends GetResponsiveView<ResponsiveController> {
//   @override
//   Widget builder() => screen.isDesktop
//       ? Container(
//           child: Icon(Icons.desktop_windows, size: 75),
//           color: screen.isTablet ? Colors.red : Colors.indigo)
//       : screen.isPhone
//           ? Icon(Icons.phone, size: 75)
//           : Icon(Icons.info, size: 75);
// }

// class ResponsiveViewCustomSettings
//     extends GetResponsiveView<ResponsiveController> {
//   ResponsiveViewCustomSettings()
//       : super(
//             settings: ResponsiveScreenSettings(
//                 desktopChangePoint: 800,
//                 tabletChangePoint: 700,
//                 watchChangePoint: 600));

//   @override
//   Widget builder() => Column(
//         children: [
//           Text('Desktop up 800, Tablet up 700 watch up 600',
//               style: TextStyle(fontSize: 35)),
//           Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
//             Text(screen.width.toString(), style: TextStyle(fontSize: 35)),
//             Text(screen.screenType.toString(), style: TextStyle(fontSize: 35)),
//           ]),
//         ],
//       );
// }
