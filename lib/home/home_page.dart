import 'package:api_com_getx/home/components/grid_gifs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(controller != null);
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: controller.obx((state) => GridGifs(state),
          onLoading: Center(child: Text('Carregando')),
          onError: (error) => Center(
                child: Text(error),
              )),
    );
  }
}
