part of 'app_pages.dart';

abstract class Routes {
  static const HOME = 'Home';
}

extension RoutesExtension on String {
  String nameToRoute() => '/${this.toLowerCase()}';
}
