import 'package:api_com_getx/repository/giphy_repository.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class HomePageBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GiphyRepository());
    Get.lazyPut(() => HomePageController(Get.find()));
  }
}
