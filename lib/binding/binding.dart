import 'package:get/get.dart';
import 'package:untitled/controller/reactive_controller.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put(ReactiveController());
  }
}