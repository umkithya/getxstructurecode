import 'package:freezed_annotation/freezed_annotation.dart';

import '../rating_model/rating_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    final int? id,
    final String? title,
    final dynamic price,
    final String? description,
    final String? category,
    final String? image,
    final RatingModel? rating,
  }) = _ProductModel;
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
