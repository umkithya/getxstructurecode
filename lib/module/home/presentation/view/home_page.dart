import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prohecomapp/module/home/presentation/binding/home_binding.dart';
import 'package:prohecomapp/module/home/presentation/controller/home_controller.dart';
import 'package:prohecomapp/utils/service/secure_local_storage.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    HomeBinding().dependencies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () => context.push("/detail"),
            icon: const Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body:
          // SizedBox.expand(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          // Obx(() => Text("Number: ${homeController.number.value}")),
          // ElevatedButton(
          //     onPressed: () {
          //       SnackBar snackBar = const SnackBar(
          //         content: Text("asdasd"),
          //         behavior: SnackBarBehavior.floating,
          //       );
          //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
          //     },
          //     child: const Icon(Icons.message_outlined))
          //     Obx(
          //   () => ListView.builder(
          //     itemCount: homeController.listProduct.length,
          //     itemBuilder: (context, index) => Card(
          //       child: Padding(
          //         padding: const EdgeInsets.all(30),
          //         child: Text(
          //           homeController.listProduct[index].title.toString(),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          homeController.obx(
              (state) => ListView.builder(
                    itemCount: homeController.listProduct.length,
                    itemBuilder: (context, index) => Card(
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Text(
                          homeController.listProduct[index].title.toString(),
                        ),
                      ),
                    ),
                  ),
              onEmpty: const Text("Empty"),
              onLoading:
                  const Center(child: CircularProgressIndicator.adaptive())),
      //   ],
      // ),
      // ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () async {
              // await SecureLocalStorage.storeData("number", 123.0);
              print("Done");
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () async {
              // var num = await SecureLocalStorage.getNumValue("number");
              print("Done #$num");
            },
            child: const Icon(Icons.remove_red_eye),
          ),
        ],
      ),
    );
  }
}
