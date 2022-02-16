import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/reactive_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(context) {
    final ReactiveController c = Get.put(ReactiveController());

    return Scaffold(
      appBar: AppBar(title: Text('HomePage'),leading: IconButton(onPressed: (){
        Get.toNamed("/next");
      }, icon: Icon(Icons.gamepad_outlined),),),
      body: Obx(() => ListView.builder(
            itemBuilder: (context, idx) {
              return ListTile(
                title: Text(c.todo_list[idx].title),
              );
            },
            itemCount: c.todo_list.length,
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          c.append('추가 ㅎㅎ');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
