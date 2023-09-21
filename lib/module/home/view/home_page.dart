import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstructurecode/module/home/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Obx(
        () => Center(
          child: Text("Number: ${homeController.number.value}"),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => homeController.increment(),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => homeController.decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
