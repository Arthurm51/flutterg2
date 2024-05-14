import 'package:get/get.dart';
import '../controllers/unique_controller.dart';

class UniqueBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UniqueController());
  }
}