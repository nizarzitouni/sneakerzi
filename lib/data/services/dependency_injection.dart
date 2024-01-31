import 'package:sneakers_shop/controllers/products_controller.dart';

// import '../controllers/main_controller.dart';

import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

class DependecyInjection {
  static Future<void> init() async {
    // await GetStorage.init();
    Get.put<ProductsController>(ProductsController());
  }
}
