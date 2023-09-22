import 'package:getxstructurecode/core/network/end_point.dart';

import '../domain/adapters/repository_adapter.dart';
import '../domain/entity/product_model/product_model.dart';
import 'home_api_provider.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.provider});
  final IHomeProvider provider;

  @override
  Future<List<ProductModel>> getProducts() async {
    return await provider.getProducts(Endpoints.products);
  }
}
