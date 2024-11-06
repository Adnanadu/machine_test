import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
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
    @JsonKey(name: "reviews") List<Review>? reviews,
  }) = _ProductModel;

  static fromJson(json) {}
}

@freezed
class Review with _$Review {
  const factory Review({
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "comment") String? comment,
  }) = _Review;
}
