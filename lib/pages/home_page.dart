import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/controller.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(context) {
    // Get.put(Controller());
    final Controller c = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, idx) {
        return ListTile(title: Text(c.todo_list[idx].title),);
      },
        itemCount: c.todo_list.length,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        c.append('추가 ㅎㅎ');
      },child: Icon(Icons.add),),
    );
  }
}
