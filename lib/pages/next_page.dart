import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/normal_controller.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    NormalController _controller = Get.put(NormalController());

    return Scaffold(
      appBar: AppBar(title: Text('Next Page'),leading: IconButton(onPressed: (){
        Get.toNamed("/");
      }, icon: Icon(Icons.gamepad_outlined),),),
      body: GetBuilder<NormalController>(builder: (controller) {
        return ListView.builder(
          itemBuilder: (context, idx) {
            return ListTile(
              title: Text(_controller.todo_list[idx].title),
            );
          },
          itemCount: _controller.todo_list.length,
        );
      },),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.append('추가 ㅎㅎ');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
