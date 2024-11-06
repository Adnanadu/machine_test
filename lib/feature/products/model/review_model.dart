import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  factory ReviewModel({
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "comment") String? comment,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, Object?> json) =>
      _$ReviewModelFromJson(json);
}
