import 'package:get/get.dart';

import '../controllers/rootapp_controller.dart';

class RootappBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootappController>(
      () => RootappController(),
    );
  }
}
