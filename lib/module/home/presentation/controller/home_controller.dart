import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstructurecode/module/home/domain/adapters/repository_adapter.dart';
import 'package:getxstructurecode/module/home/domain/entity/product_model/product_model.dart';

class HomeController extends GetxController {
  HomeController({required this.homeRepository});
  final IHomeRepository homeRepository;
  final listProduct = <ProductModel>[].obs;

  final number = 1.obs;

  void increment() {
    number.value++;
  }

  void decrement() {
    if (number.value > 0) {
      number.value--;
    }
  }

  @override
  void onInit() {
    debugPrint("Hi Init");
    getProductData();
    super.onInit();
  }

  Future<void> getProductData() async {
    listProduct.value = await homeRepository.getProducts();
  }
}
