part of 'app_pages.dart';

abstract class Routes {
  static const Home = 'Home';
  static const NotFound = 'not-found'; 
}

extension RoutesExtension on String {
  String nameToRoute() => '/${this.toLowerCase()}';
}
