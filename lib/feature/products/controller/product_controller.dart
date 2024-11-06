import 'package:get/get.dart';
import 'package:machine_test/feature/products/model/product_model.dart';
import 'package:machine_test/feature/products/services/api_services.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;
  var error = ''.obs;

  @override
  void onInit() {
    getProducts();

    super.onInit();
  }

  void getProducts() async {
    try {
      isLoading(true);

      final products = await ApiServices.getProducts();

      productList.assignAll(
        products,
      );
    } catch (e) {
      error.value = 'Cannot get products';

      Get.snackbar('Error', error.value);
    } finally {
      isLoading(false);
    }
  }
}
