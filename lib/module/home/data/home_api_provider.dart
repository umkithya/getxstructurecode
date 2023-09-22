import 'package:dio/dio.dart';
import 'package:getxstructurecode/module/home/domain/entity/product_model/product_model.dart';

import '../../../core/network/dio_helper.dart';

// ignore: one_member_abstracts
abstract class IHomeProvider {
  Future<List<ProductModel>> getProducts(String path);
}

class HomeProvider implements IHomeProvider {
  @override
  Future<List<ProductModel>> getProducts(String path) async {
    try {
      final Response response =
          await DioHelper().onNetworkRequest(path, methode: METHODE.get);
      final list =
          (response.data as List).map((e) => ProductModel.fromJson(e)).toList();
      return list;
    } on DioException catch (e) {
      final errorMessage = e.error.toString();
      throw errorMessage;
    }
  }
}
