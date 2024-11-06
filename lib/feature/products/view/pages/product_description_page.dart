import 'package:flutter/material.dart';
import 'package:machine_test/feature/products/model/product_model.dart';

class ProductDescriptionPage extends StatelessWidget {
  final ProductModel product;
  final String imageUrl;
  final discount;
  const ProductDescriptionPage({
    super.key,
    required this.product,
    required this.imageUrl,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: const Color(0x00ff1321),
        body: SafeArea(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 300,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              product.name!,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 28),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$${(product.price! * (1 - 0.10)).toStringAsFixed(2)}",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 24),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "\$${product.price!},",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  decoration: TextDecoration.lineThrough),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          product.description!,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Available',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          ' ${product.rating.toString()} ★',
                          style: const TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text('Customer Reviews',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: product.reviews!.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      width: .8,
                                      color: const Color(0xFFDFDFDF))),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 20,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              'User ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 14),
                                            ),
                                            const Spacer(),
                                            Row(
                                              children: [
                                                Text(
                                                    ' ${product.reviews![index].rating} ',
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                const Text(
                                                  "★",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.orange),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          product.reviews![index].comment!,
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text("Price",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text(
                          "\$${(product.price! * (1 - 0.10)).toStringAsFixed(2)}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                          minimumSize: const Size(0, 56),
                        ),
                        onPressed: () {},
                        child: const Text("Add to Cart"))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
