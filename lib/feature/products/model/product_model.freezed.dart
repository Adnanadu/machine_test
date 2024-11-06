// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  @JsonKey(name: "product_id")
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "availability")
  bool? get availability => throw _privateConstructorUsedError;
  @JsonKey(name: "brand")
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews")
  List<ReviewModel>? get reviews => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "product_id") int? productId,
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
      @JsonKey(name: "reviews") List<ReviewModel>? reviews});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? unit = freezed,
    Object? image = freezed,
    Object? discount = freezed,
    Object? availability = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? rating = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product_id") int? productId,
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
      @JsonKey(name: "reviews") List<ReviewModel>? reviews});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? unit = freezed,
    Object? image = freezed,
    Object? discount = freezed,
    Object? availability = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? rating = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$ProductModelImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductModelImpl implements _ProductModel {
  _$ProductModelImpl(
      {@JsonKey(name: "product_id") this.productId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "unit") this.unit,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "availability") this.availability,
      @JsonKey(name: "brand") this.brand,
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "reviews") final List<ReviewModel>? reviews})
      : _reviews = reviews;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  @JsonKey(name: "product_id")
  final int? productId;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "price")
  final double? price;
  @override
  @JsonKey(name: "unit")
  final String? unit;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "discount")
  final int? discount;
  @override
  @JsonKey(name: "availability")
  final bool? availability;
  @override
  @JsonKey(name: "brand")
  final String? brand;
  @override
  @JsonKey(name: "category")
  final String? category;
  @override
  @JsonKey(name: "rating")
  final double? rating;
  final List<ReviewModel>? _reviews;
  @override
  @JsonKey(name: "reviews")
  List<ReviewModel>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductModel(productId: $productId, name: $name, description: $description, price: $price, unit: $unit, image: $image, discount: $discount, availability: $availability, brand: $brand, category: $category, rating: $rating, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      name,
      description,
      price,
      unit,
      image,
      discount,
      availability,
      brand,
      category,
      rating,
      const DeepCollectionEquality().hash(_reviews));

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
          {@JsonKey(name: "product_id") final int? productId,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "price") final double? price,
          @JsonKey(name: "unit") final String? unit,
          @JsonKey(name: "image") final String? image,
          @JsonKey(name: "discount") final int? discount,
          @JsonKey(name: "availability") final bool? availability,
          @JsonKey(name: "brand") final String? brand,
          @JsonKey(name: "category") final String? category,
          @JsonKey(name: "rating") final double? rating,
          @JsonKey(name: "reviews") final List<ReviewModel>? reviews}) =
      _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  @JsonKey(name: "product_id")
  int? get productId;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "price")
  double? get price;
  @override
  @JsonKey(name: "unit")
  String? get unit;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "discount")
  int? get discount;
  @override
  @JsonKey(name: "availability")
  bool? get availability;
  @override
  @JsonKey(name: "brand")
  String? get brand;
  @override
  @JsonKey(name: "category")
  String? get category;
  @override
  @JsonKey(name: "rating")
  double? get rating;
  @override
  @JsonKey(name: "reviews")
  List<ReviewModel>? get reviews;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
