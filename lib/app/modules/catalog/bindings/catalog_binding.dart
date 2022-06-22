import 'package:get/get.dart';

import '../controllers/catalog_controller.dart';

class CatalogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CatalogController>(
      () => CatalogController(),
    );
  }
}
