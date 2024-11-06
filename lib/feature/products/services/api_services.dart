import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:machine_test/feature/products/model/product_model.dart';

class ApiServices {
  static Future<List<ProductModel>> getProducts() async {
    final response = await http.get(
        Uri.parse('https://fake-store-api.mock.beeceptor.com/api/products'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      return data.map((e) => ProductModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
