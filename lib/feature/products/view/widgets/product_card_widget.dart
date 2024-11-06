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
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: products.length,
      separatorBuilder: (context, index) => const SizedBox(width: 16),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.to(() => ProductDescriptionPage(
                  product: products[index],
                  imageUrl:
                      "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",
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
                      "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",
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
