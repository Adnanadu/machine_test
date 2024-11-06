import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:machine_test/feature/products/model/review_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  @JsonSerializable(explicitToJson: true)
  factory ProductModel({
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "price") double? price,
    @JsonKey(name: "unit") String? unit,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "discount") int? discount,
    @JsonKey(name: "availability") bool? availability,
    @JsonKey(name: "brand") String? brand,
    @JsonKey(name: "category") String? category,
    @JsonKey(name: "rating") double? rating,
    @JsonKey(name: "reviews") List<ReviewModel>? reviews,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, Object?> json) =>
      _$ProductModelFromJson(json);
}
