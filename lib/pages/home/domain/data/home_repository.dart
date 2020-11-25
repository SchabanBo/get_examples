import 'package:get_page_example/pages/home/domain/adapters/repository_adapter.dart';
import 'package:get/get_utils/get_utils.dart';

class HomeRepository implements IHomeRepository {
  @override
  Future<String> getPageName() => 2.delay(() => 'Home Page');
}
