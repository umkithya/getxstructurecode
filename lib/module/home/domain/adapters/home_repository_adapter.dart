
// ignore: one_member_abstracts
import '../entity/product_model/product_model.dart';

abstract class IHomeRepository {
  Future<List<ProductModel>> getProducts();
}
