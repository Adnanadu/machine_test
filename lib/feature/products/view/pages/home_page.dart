import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:machine_test/feature/products/controller/category_controller.dart';
import 'package:machine_test/feature/products/controller/product_controller.dart';
import 'package:get/get.dart';
import 'package:machine_test/feature/products/view/widgets/product_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final productController = Get.put(ProductController());
    final categoryController = Get.put(CategoryController());

    return Scaffold(
      backgroundColor: const Color(0xff1A2530),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // leading Icon
                  SvgPicture.asset(
                    "assets/icons/leading.svg",
                    height: 44,
                    width: 44,
                  ),

                  //center Store Location indicates here
                  const Column(
                    children: [
                      Text(
                        "Store Location",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Row(children: [
                        Text(
                          "ABC Street, New York",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ]),
                    ],
                  ),

                  //action icon ( cart incates here)
                  Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/action_cart.svg",
                        height: 44,
                        width: 44,
                      ),
                      SizedBox(
                        height: 44,
                        width: 44,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: const BoxDecoration(
                                color: Colors.orange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(36))),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 16),

                      //search bar
                      const SearchBar(
                        hintText: "Search",
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xff161F28)),
                        shadowColor: WidgetStatePropertyAll(Colors.transparent),
                        leading: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 120, 120, 120),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        height: 50,
                        child: Obx(() {
                          final selectedIndex =
                              categoryController.selectedIndex.value;

                          return ListView.separated(
                              itemCount:
                                  categoryController.categoryNames.length,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 16),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                final isSelected = selectedIndex == index;

                                return GestureDetector(
                                  onTap: () => categoryController
                                      .selectedIndex.value = index,
                                  child: Container(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 6),
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? const Color(0xff5B9EE1)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(12),
                                          decoration: BoxDecoration(
                                            color: isSelected
                                                ? Colors.white
                                                : const Color(0xff161F28),
                                            shape: BoxShape.circle,
                                          ),
                                          child: SvgPicture.asset(
                                            categoryController
                                                .categoryImages[index],
                                            height: 18,
                                            colorFilter: ColorFilter.mode(
                                                isSelected
                                                    ? const Color(0xff1A2530)
                                                    : Colors.white,
                                                BlendMode.srcIn),
                                          ),
                                        ),
                                        if (isSelected)
                                          Text(
                                            categoryController
                                                .categoryNames[index],
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        if (isSelected)
                                          const SizedBox(width: 12),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        }),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        "New Arrivals",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
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

                        return SizedBox(
                          height: 200,
                          child: ProductCardWidget(
                            products: productController.productList,
                          ),
                        );
                      }),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        "Trending Products",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
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

                        return SizedBox(
                          height: 200,
                          child: ProductCardWidget(
                            products: productController.productList,
                          ),
                        );
                      }),
                    ],
                  ),
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
