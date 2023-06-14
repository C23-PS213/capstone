import 'package:get/get.dart';

import '../controllers/informasipribadi_controller.dart';

class InformasipribadiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InformasipribadiController>(
      () => InformasipribadiController(),
    );
  }
}
