import 'package:get/get.dart';
import 'package:untitled/model/todo.dart';

class NormalController extends GetxController {
  static NormalController get to => Get.find();
  List todo_list = [];


  void append(title) {
    todo_list.add(Todo(title: title));
    update();
  }
}