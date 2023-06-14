import 'package:get/get.dart';

import '../controllers/scanwajah2_controller.dart';

class Scanwajah2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Scanwajah2Controller>(
      () => Scanwajah2Controller(),
    );
  }
}
