import 'package:api_com_getx/home/home_page.dart';
import 'package:api_com_getx/home/home_page_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => HomePage(), binding: HomePageBindings())
      ],
    );
  }
}