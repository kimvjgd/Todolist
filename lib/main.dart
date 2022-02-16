import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/controller.dart';
import 'package:untitled/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () {  })
      ],
      home: HomePage(),
    );
  }
}
