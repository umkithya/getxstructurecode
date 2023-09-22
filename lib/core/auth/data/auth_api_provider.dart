// ignore: one_member_abstracts
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../network/dio_helper.dart';

abstract class IAuthProvider {
  Future<String> submitLogin(String path,
      {required String username, required String password});
}

class AuthProvider implements IAuthProvider {
  @override
  Future<String> submitLogin(String path,
      {required String username, required String password}) async {
    try {
      final body = {"username": username, "password": password};
      Response response = await DioHelper().onNetworkRequest(path,
          methode: METHODE.post, body: body, isDebugOn: true);
      debugPrint("$response");
      return "";
    } catch (e) {
      // final errorMessage = e.error.toString();
      rethrow;
      // throw errorMessage;
      // rethrow ;
    }
  }
  // @override
  // Future<List<ProductModel>> getProducts(String path) async {
  //   try {
  //     final Response response =
  //         await DioHelper().onNetworkRequest(path, methode: METHODE.get);
  //     final list =
  //         (response.data as List).map((e) => ProductModel.fromJson(e)).toList();
  //     return list;
  //   } catch (e) {
  //     // final errorMessage = e.error.toString();
  //     rethrow;
  //     // throw errorMessage;
  //     // rethrow ;
  //   }
  // }
}
