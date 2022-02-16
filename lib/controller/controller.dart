import 'package:get/get.dart';
import 'package:untitled/model/todo.dart';

class Controller extends GetxController{
  RxList todo_list = [].obs;


  void append(title) {
    todo_list.add(Todo(title: title));
  }

  @override
  void onInit() {
    ever(todo_list,(_)=>print('매번 호출'));
    once(todo_list, (_)=>print('한번만 호출'));
    debounce(todo_list, (_)=>print('마지막 변경에 한번만 호출'),time: Duration(seconds: 1));
    // debounce 멈추면 1초 뒤에 호출된다. ex) 검색할때 입력을 어느정도 마무리했을때 관련 검색어들을 보여준다.
    interval(todo_list, (_)=>print('변경되고 있는 동안에 1초마다 호출'), time: Duration(seconds: 1));
    super.onInit();
  }
}