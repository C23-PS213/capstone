import 'package:get/get.dart';

import '../controllers/hasilfoto_controller.dart';

class HasilfotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HasilfotoController>(
      () => HasilfotoController(),
    );
  }
}
