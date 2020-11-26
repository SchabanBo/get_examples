import 'package:get_page_example/shared/auth/page_auth.dart';

class AuthService {
  final auth = <PageAuth>[];

  bool isActive(String name) => auth.firstWhere((element) => element.name == name).isAuthed;
}
