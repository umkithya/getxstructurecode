import 'package:getxstructurecode/network/end_point.dart';

import '../domain/adapters/home_repository_adapter.dart';
import '../domain/entity/product_model/product_model.dart';
import 'home_api_provider.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.provider});
  final IHomeProvider provider;

  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      return await provider.getProducts(Endpoints.products);
    } catch (e) {
      rethrow;
      // return [];
    }
  }
}
