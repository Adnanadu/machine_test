// import 'dart:convert';
// import 'dart:developer';
// import 'package:http/http.dart' as http;
// import 'package:machine_test/feature/HomePage/view/model/product_model.dart';

// Future<List <ProductModel>> fetchData() async {
//   final url =
//       Uri.parse('https://fake-store-api.mock.beeceptor.com/api/products');
//   try {
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       // Parse the JSON data
//       final data = json.decode(response.body);
//       return data;
//     } else {
//       log('Failed to load data: ${response.statusCode}');
//     }
//   } catch (e) {
//     log('Error: $e');
//   }
// }
