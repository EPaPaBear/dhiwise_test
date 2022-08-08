import '../controller/sussy_phone_controller.dart';
import 'package:get/get.dart';

class SussyPhoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SussyPhoneController());
  }
}
