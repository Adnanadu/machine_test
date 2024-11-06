import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/feature/products/model/product_model.dart';
import 'package:machine_test/feature/products/view/pages/product_description_page.dart';

class ProductCardWidget extends StatelessWidget {
  final List<ProductModel> products;

  const ProductCardWidget({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    const discountPercentage = 0.1;

    final Imageurls = [
      "https://img.freepik.com/free-photo/modern-stationary-collection-arrangement_23-2149309641.jpg?ga=GA1.1.1061239647.1726655277&semt=ais_hybrid",
      "https://img.freepik.com/free-photo/top-view-virtual-reality-headset-white-headphones_23-2148912739.jpg?ga=GA1.1.1061239647.1726655277&semt=ais_hybrid",
      "https://img.freepik.com/free-photo/modern-stationary-collection-arrangement_23-2149309628.jpg?ga=GA1.1.1061239647.1726655277&semt=ais_hybrid",
      "https://img.freepik.com/free-photo/top-view-virtual-reality-simulator-with-laptop_23-2148912818.jpg?ga=GA1.1.1061239647.1726655277&semt=ais_hybrid",
      "https://img.freepik.com/free-photo/workplace-business-modern-male-accessories-laptop-black-background_155003-3944.jpg?ga=GA1.1.1061239647.1726655277&semt=ais_hybrid",
    ];

    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: products.length,
      separatorBuilder: (context, index) => const SizedBox(width: 16),
      itemBuilder: (context, index) {
        String randomImageUrl = Imageurls[Random().nextInt(Imageurls.length)];

        return InkWell(
          onTap: () {
            Get.to(() => ProductDescriptionPage(
                  product: products[index],
                  imageUrl: randomImageUrl,
                  discount: discountPercentage * 100,
                ));
          },
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xff161F28),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            width: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 100,
                    child: Image.network(
                      randomImageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  products[index].name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  '\$${products[index].price}',
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
