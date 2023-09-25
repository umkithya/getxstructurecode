import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prohecomapp/network/dio_exceptions.dart';
import 'package:prohecomapp/module/home/domain/adapters/home_repository_adapter.dart';
import 'package:prohecomapp/module/home/domain/entity/product_model/product_model.dart';

class HomeController extends GetxController
    with StateMixin<List<ProductModel>> {
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
    try {
      change([], status: RxStatus.loading());
      listProduct.value = await homeRepository.getProducts();
      change(listProduct, status: RxStatus.success());
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      change([], status: RxStatus.error(errorMessage));
      throw errorMessage;
    }
  }
}
