import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_test/controller/controller.dart';
import 'package:getx_test/views/first_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GetBuilder<TapController>(builder: (tapController) {
            return Center(
              child: Text(
                '${tapController.x.toString()}',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            );
          }),
          ElevatedButton(
            onPressed: () {
              controller.increaseX();
            },
            child: Text('Increase'),
          ),
          SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => FirstPage());
            },
            child: Text('Go to first page'),
          ),
        ],
      ),
    );
  }
}
