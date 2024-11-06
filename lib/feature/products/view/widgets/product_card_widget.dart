import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:machine_test/feature/products/controller/product_controller.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productController = Get.put(ProductController());
    final products = productController.productList.value;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            //routing to product Details
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150,
                  width: 100,
                  child: Image.network(
                    "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  products[index].name!,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  products[index].price.toString(),
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
