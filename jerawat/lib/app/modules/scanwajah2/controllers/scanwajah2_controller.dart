import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Scanwajah2Controller extends GetxController {

  RxString imagePath = RxString('');

  Future<void> pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      imagePath.value = pickedImage.path;
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
