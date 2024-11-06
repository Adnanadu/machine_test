import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:machine_test/feature/products/controller/product_controller.dart';
import 'package:machine_test/feature/products/view/pages/product_description_page.dart';
import 'package:get/get.dart';
import 'package:machine_test/feature/products/view/widgets/product_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final productController = Get.put(ProductController());

    return Scaffold(
      backgroundColor: const Color(0xff1A2530),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // leading Icon
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: SvgPicture.asset(
                      "assets/logo/leading.svg",
                      height: 44,
                      width: 44,
                    ),
                  ),

                  //center Store Location indicates here
                  InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Text(
                          "Store Location",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        Row(children: [
                          // SvgPicture.asset(
                          //   "assets/logo/loaction.svg",
                          //   height: 14,
                          //   width: 14,
                          // ),
                          Text(
                            "ABC Street, New York",
                          ),
                        ]),
                      ],
                    ),
                  ),

                  //action icon ( cart incates here)
                  InkWell(
                    onTap: () {},
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          "assets/logo/action_cart.svg",
                          height: 44,
                          width: 44,
                        ),
                        Align(
                            // alignment: Alignment.centerRight,
                            child: Container(
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(36))),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),

              //search bar
              Container(
                decoration: const BoxDecoration(
                    // color: Colors.red,
                    color: Color(0xff161F28),
                    borderRadius: BorderRadius.all(Radius.circular(32))),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      hintText: "Search here"),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 56,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black87,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              //when it clicks it will shows selected brand only
                            },
                            child: SvgPicture.asset("assets/logo/puma.svg")),
                        const SizedBox(
                          width: 8,
                        )
                      ]);
                    }),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "New Arrivals",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 16,
              ),
              Obx(() {
                if (productController.error.value.isNotEmpty) {
                  return Center(
                    child: Text(productController.error.value),
                  );
                }

                if (productController.isLoading.value) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return const SizedBox(
                  height: 240,
                  child: ProductCardWidget(),
                );
              }),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Trending Products",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    // return const Hero(
                    //   tag: "productDescription",
                    //   child: AspectRatio(
                    //     aspectRatio: 9 / 16,
                    //     child: Placeholder(),
                    //   ),
                    // );
                    return InkWell(
                      onTap: () => MaterialPageRoute(
                        builder: (context) => const ProductDescriptionPage(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 100,
                          child: Image.network(
                            "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const BottomNaviBar(),
    );
  }
}
